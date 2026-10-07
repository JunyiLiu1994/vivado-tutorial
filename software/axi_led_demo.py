"""Step 2 on the board (PYNQ): drive the LEDs and read the switches through the AXI registers."""
import time
import pynq

BASE = 0x8000_0000           # where AxiLed.tcl mapped S_AXI
LED_R, LED_G, LED_B, DIP_SW, BTN = 0x00, 0x04, 0x08, 0x0C, 0x10

ol = pynq.Overlay("AxiLed.bit")      # downloads the bitstream (AxiLed.hwh must sit next to it)
mmio = pynq.MMIO(BASE, 0x1000)

print("switches:", bin(mmio.read(DIP_SW)), "buttons:", bin(mmio.read(BTN)))
for i in range(8):                   # running light on the red LEDs
    mmio.write(LED_R, 1 << i)
    time.sleep(0.2)
mmio.write(LED_R, 0)
mmio.write(LED_G, mmio.read(DIP_SW)) # copy the switch positions to the green LEDs
