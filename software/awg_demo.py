"""Step 3 on the board (PYNQ): play a waveform on one DAC and read back the ADC it is cabled to."""
import numpy as np
import xrfclk
import pynq

BASE = 0x8000_0000                    # S_AXI base, see SimpleAwg.tcl / SimpleAwg.scala
PULSE_MEM, PULSE_STRIDE = 0x10_0000, 0x8000    # 1024 words x 16 samples per channel
RECORD, RECORD_STRIDE = 0x20_0000, 0x2000      # 1024 words x 4 samples per channel
REC_COUNT, BUSY = 0x40, 0x44
DSP_CLK = 500e6                       # one 256-bit word per dspClk cycle
LOOPBACK = {0: 14, 1: 15, 2: 12, 3: 13, 4: 10, 5: 11, 6: 8, 7: 9,
            8: 6, 9: 7, 10: 4, 11: 5, 12: 2, 13: 3, 14: 0, 15: 1}   # DAC -> ADC cabling of our test bench

# 1. clocks first: the CLK104 must deliver 500 MHz PL / reference clocks before the converters start
xrfclk.set_ref_clks(lmk_freq=500.25)
# 2. bitstream (SimpleAwg.hwh must sit next to SimpleAwg.bit)
ol = pynq.Overlay("SimpleAwg.bit")
mmio = pynq.MMIO(BASE, 0x40_0000)


def load_pulse(dac, samples):
    """samples: int16 array, 16 per dspClk cycle, oldest first (zero padded to a whole word)."""
    s = np.zeros(-(-len(samples) // 16) * 16, np.int16)
    s[: len(samples)] = samples
    words = s.astype(np.uint16).view(np.uint32)       # two samples per 32-bit bus word
    mmio.write(PULSE_MEM + dac * PULSE_STRIDE, words.tobytes())


def play(dac, cycles):
    """Start DAC `dac` for `cycles` dspClk cycles (16 samples each); also starts recording."""
    mmio.write(4 * dac, cycles)


def read_record(adc, words=1024):
    base = RECORD + adc * RECORD_STRIDE
    raw = np.array([mmio.read(base + 4 * i) for i in range(2 * words)], np.uint32)
    return raw.view(np.int16)                          # 4 ADC samples per 64-bit word, oldest first


# a 2 us, 125 MHz sine burst: 16384 samples at 8 GSPS
n = 16384
t = np.arange(n) / 8e9
load_pulse(0, (20000 * np.sin(2 * np.pi * 125e6 * t)).astype(np.int16))
play(0, n // 16)
while mmio.read(BUSY):
    pass
rx = read_record(LOOPBACK[0])
print("recorded words:", mmio.read(REC_COUNT), "peak:", rx.max(), "min:", rx.min())
np.save("loopback.npy", rx)
