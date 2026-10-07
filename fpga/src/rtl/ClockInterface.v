// Generator : SpinalHDL v1.14.2    git head : 78f29dc66110fc099a777992b6daa2f803ab445e
// Component : ClockInterface

`timescale 1ns/1ps

module ClockInterface (
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dspClk_diff CLK_P" *) input  wire          dspClk_clk_p,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dspClk_diff CLK_N" *) input  wire          dspClk_clk_n,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 user_sysref_diff CLK_P" *) input  wire          user_sysref_clk_p,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 user_sysref_diff CLK_N" *) input  wire          user_sysref_clk_n,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dspClk CLK" , X_INTERFACE_PARAMETER = "FREQ_HZ 500000000" *) output wire          dspClk,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 user_sysref CLK" *) output wire          user_sysref
);

  wire                dspIbuf_O;
  wire                dspBufg_O;
  wire                sysrefIbuf_O;

  IBUFGDS dspIbuf (
    .I  (dspClk_clk_p), //i
    .IB (dspClk_clk_n), //i
    .O  (dspIbuf_O   )  //o
  );
  BUFG dspBufg (
    .I (dspIbuf_O), //i
    .O (dspBufg_O)  //o
  );
  IBUFGDS sysrefIbuf (
    .I  (user_sysref_clk_p), //i
    .IB (user_sysref_clk_n), //i
    .O  (sysrefIbuf_O     )  //o
  );
  assign dspClk = dspBufg_O;
  assign user_sysref = sysrefIbuf_O;

endmodule
