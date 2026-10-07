// Generator : SpinalHDL v1.14.2    git head : 78f29dc66110fc099a777992b6daa2f803ab445e
// Component : BlinkLed

`timescale 1ns/1ps

module BlinkLed (
  output wire [7:0]    io_led,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" , X_INTERFACE_PARAMETER = "ASSOCIATED_RESET reset" *) input  wire          clk,
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" , X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input  wire          reset
);

  reg        [31:0]   counter;

  assign io_led = counter[31 : 24];
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      counter <= 32'h0;
    end else begin
      counter <= (counter + 32'h00000001);
    end
  end


endmodule
