// Generator : SpinalHDL v1.14.2    git head : 78f29dc66110fc099a777992b6daa2f803ab445e
// Component : SimpleAwg

`timescale 1ns/1ps

module SimpleAwg (
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input  wire          io_axi_aw_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output reg           io_axi_aw_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input  wire [31:0]   io_axi_aw_payload_addr,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input  wire [1:0]    io_axi_aw_payload_id,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input  wire [3:0]    io_axi_aw_payload_region,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input  wire [7:0]    io_axi_aw_payload_len,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input  wire [2:0]    io_axi_aw_payload_size,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input  wire [1:0]    io_axi_aw_payload_burst,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input  wire [0:0]    io_axi_aw_payload_lock,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input  wire [3:0]    io_axi_aw_payload_cache,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input  wire [3:0]    io_axi_aw_payload_qos,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input  wire [2:0]    io_axi_aw_payload_prot,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input  wire          io_axi_w_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output wire          io_axi_w_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input  wire [31:0]   io_axi_w_payload_data,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input  wire [3:0]    io_axi_w_payload_strb,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input  wire          io_axi_w_payload_last,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output wire          io_axi_b_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input  wire          io_axi_b_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output wire [1:0]    io_axi_b_payload_id,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output wire [1:0]    io_axi_b_payload_resp,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input  wire          io_axi_ar_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output reg           io_axi_ar_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input  wire [31:0]   io_axi_ar_payload_addr,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input  wire [1:0]    io_axi_ar_payload_id,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input  wire [3:0]    io_axi_ar_payload_region,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input  wire [7:0]    io_axi_ar_payload_len,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input  wire [2:0]    io_axi_ar_payload_size,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input  wire [1:0]    io_axi_ar_payload_burst,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input  wire [0:0]    io_axi_ar_payload_lock,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input  wire [3:0]    io_axi_ar_payload_cache,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input  wire [3:0]    io_axi_ar_payload_qos,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input  wire [2:0]    io_axi_ar_payload_prot,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output wire          io_axi_r_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input  wire          io_axi_r_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output wire [31:0]   io_axi_r_payload_data,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output wire [1:0]    io_axi_r_payload_id,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output wire [1:0]    io_axi_r_payload_resp,
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output wire          io_axi_r_payload_last,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC0_AXIS TVALID" *) output wire          io_dac_0_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC0_AXIS TREADY" *) input  wire          io_dac_0_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC0_AXIS TDATA" *) output wire [255:0]  io_dac_0_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC1_AXIS TVALID" *) output wire          io_dac_1_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC1_AXIS TREADY" *) input  wire          io_dac_1_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC1_AXIS TDATA" *) output wire [255:0]  io_dac_1_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC2_AXIS TVALID" *) output wire          io_dac_2_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC2_AXIS TREADY" *) input  wire          io_dac_2_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC2_AXIS TDATA" *) output wire [255:0]  io_dac_2_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC3_AXIS TVALID" *) output wire          io_dac_3_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC3_AXIS TREADY" *) input  wire          io_dac_3_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC3_AXIS TDATA" *) output wire [255:0]  io_dac_3_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC4_AXIS TVALID" *) output wire          io_dac_4_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC4_AXIS TREADY" *) input  wire          io_dac_4_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC4_AXIS TDATA" *) output wire [255:0]  io_dac_4_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC5_AXIS TVALID" *) output wire          io_dac_5_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC5_AXIS TREADY" *) input  wire          io_dac_5_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC5_AXIS TDATA" *) output wire [255:0]  io_dac_5_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC6_AXIS TVALID" *) output wire          io_dac_6_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC6_AXIS TREADY" *) input  wire          io_dac_6_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC6_AXIS TDATA" *) output wire [255:0]  io_dac_6_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC7_AXIS TVALID" *) output wire          io_dac_7_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC7_AXIS TREADY" *) input  wire          io_dac_7_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC7_AXIS TDATA" *) output wire [255:0]  io_dac_7_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC8_AXIS TVALID" *) output wire          io_dac_8_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC8_AXIS TREADY" *) input  wire          io_dac_8_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC8_AXIS TDATA" *) output wire [255:0]  io_dac_8_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC9_AXIS TVALID" *) output wire          io_dac_9_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC9_AXIS TREADY" *) input  wire          io_dac_9_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC9_AXIS TDATA" *) output wire [255:0]  io_dac_9_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC10_AXIS TVALID" *) output wire          io_dac_10_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC10_AXIS TREADY" *) input  wire          io_dac_10_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC10_AXIS TDATA" *) output wire [255:0]  io_dac_10_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC11_AXIS TVALID" *) output wire          io_dac_11_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC11_AXIS TREADY" *) input  wire          io_dac_11_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC11_AXIS TDATA" *) output wire [255:0]  io_dac_11_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC12_AXIS TVALID" *) output wire          io_dac_12_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC12_AXIS TREADY" *) input  wire          io_dac_12_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC12_AXIS TDATA" *) output wire [255:0]  io_dac_12_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC13_AXIS TVALID" *) output wire          io_dac_13_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC13_AXIS TREADY" *) input  wire          io_dac_13_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC13_AXIS TDATA" *) output wire [255:0]  io_dac_13_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC14_AXIS TVALID" *) output wire          io_dac_14_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC14_AXIS TREADY" *) input  wire          io_dac_14_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC14_AXIS TDATA" *) output wire [255:0]  io_dac_14_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC15_AXIS TVALID" *) output wire          io_dac_15_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC15_AXIS TREADY" *) input  wire          io_dac_15_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DAC15_AXIS TDATA" *) output wire [255:0]  io_dac_15_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC0_AXIS TVALID" *) input  wire          io_adc_0_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC0_AXIS TREADY" *) output wire          io_adc_0_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC0_AXIS TDATA" *) input  wire [63:0]   io_adc_0_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC1_AXIS TVALID" *) input  wire          io_adc_1_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC1_AXIS TREADY" *) output wire          io_adc_1_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC1_AXIS TDATA" *) input  wire [63:0]   io_adc_1_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC2_AXIS TVALID" *) input  wire          io_adc_2_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC2_AXIS TREADY" *) output wire          io_adc_2_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC2_AXIS TDATA" *) input  wire [63:0]   io_adc_2_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC3_AXIS TVALID" *) input  wire          io_adc_3_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC3_AXIS TREADY" *) output wire          io_adc_3_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC3_AXIS TDATA" *) input  wire [63:0]   io_adc_3_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC4_AXIS TVALID" *) input  wire          io_adc_4_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC4_AXIS TREADY" *) output wire          io_adc_4_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC4_AXIS TDATA" *) input  wire [63:0]   io_adc_4_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC5_AXIS TVALID" *) input  wire          io_adc_5_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC5_AXIS TREADY" *) output wire          io_adc_5_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC5_AXIS TDATA" *) input  wire [63:0]   io_adc_5_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC6_AXIS TVALID" *) input  wire          io_adc_6_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC6_AXIS TREADY" *) output wire          io_adc_6_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC6_AXIS TDATA" *) input  wire [63:0]   io_adc_6_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC7_AXIS TVALID" *) input  wire          io_adc_7_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC7_AXIS TREADY" *) output wire          io_adc_7_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC7_AXIS TDATA" *) input  wire [63:0]   io_adc_7_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC8_AXIS TVALID" *) input  wire          io_adc_8_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC8_AXIS TREADY" *) output wire          io_adc_8_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC8_AXIS TDATA" *) input  wire [63:0]   io_adc_8_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC9_AXIS TVALID" *) input  wire          io_adc_9_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC9_AXIS TREADY" *) output wire          io_adc_9_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC9_AXIS TDATA" *) input  wire [63:0]   io_adc_9_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC10_AXIS TVALID" *) input  wire          io_adc_10_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC10_AXIS TREADY" *) output wire          io_adc_10_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC10_AXIS TDATA" *) input  wire [63:0]   io_adc_10_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC11_AXIS TVALID" *) input  wire          io_adc_11_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC11_AXIS TREADY" *) output wire          io_adc_11_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC11_AXIS TDATA" *) input  wire [63:0]   io_adc_11_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC12_AXIS TVALID" *) input  wire          io_adc_12_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC12_AXIS TREADY" *) output wire          io_adc_12_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC12_AXIS TDATA" *) input  wire [63:0]   io_adc_12_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC13_AXIS TVALID" *) input  wire          io_adc_13_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC13_AXIS TREADY" *) output wire          io_adc_13_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC13_AXIS TDATA" *) input  wire [63:0]   io_adc_13_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC14_AXIS TVALID" *) input  wire          io_adc_14_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC14_AXIS TREADY" *) output wire          io_adc_14_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC14_AXIS TDATA" *) input  wire [63:0]   io_adc_14_payload,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC15_AXIS TVALID" *) input  wire          io_adc_15_valid,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC15_AXIS TREADY" *) output wire          io_adc_15_ready,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ADC15_AXIS TDATA" *) input  wire [63:0]   io_adc_15_payload,
  output wire [7:0]    io_led,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dspClk CLK" , X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF DAC0_AXIS:DAC1_AXIS:DAC2_AXIS:DAC3_AXIS:DAC4_AXIS:DAC5_AXIS:DAC6_AXIS:DAC7_AXIS:DAC8_AXIS:DAC9_AXIS:DAC10_AXIS:DAC11_AXIS:DAC12_AXIS:DAC13_AXIS:DAC14_AXIS:DAC15_AXIS:ADC0_AXIS:ADC1_AXIS:ADC2_AXIS:ADC3_AXIS:ADC4_AXIS:ADC5_AXIS:ADC6_AXIS:ADC7_AXIS:ADC8_AXIS:ADC9_AXIS:ADC10_AXIS:ADC11_AXIS:ADC12_AXIS:ADC13_AXIS:ADC14_AXIS:ADC15_AXIS, ASSOCIATED_RESET dspRst, FREQ_HZ 500000000" *) input  wire          dspClk,
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dspRst RST" , X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input  wire          dspRst,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" , X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET reset" *) input  wire          clk,
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" , X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input  wire          reset
);

  wire       [15:0]   bufferCC_19_io_dataIn;
  reg        [255:0]  pulseMems_0_spinal_port1;
  reg        [255:0]  pulseMems_1_spinal_port1;
  reg        [255:0]  pulseMems_2_spinal_port1;
  reg        [255:0]  pulseMems_3_spinal_port1;
  reg        [255:0]  pulseMems_4_spinal_port1;
  reg        [255:0]  pulseMems_5_spinal_port1;
  reg        [255:0]  pulseMems_6_spinal_port1;
  reg        [255:0]  pulseMems_7_spinal_port1;
  reg        [255:0]  pulseMems_8_spinal_port1;
  reg        [255:0]  pulseMems_9_spinal_port1;
  reg        [255:0]  pulseMems_10_spinal_port1;
  reg        [255:0]  pulseMems_11_spinal_port1;
  reg        [255:0]  pulseMems_12_spinal_port1;
  reg        [255:0]  pulseMems_13_spinal_port1;
  reg        [255:0]  pulseMems_14_spinal_port1;
  reg        [255:0]  pulseMems_15_spinal_port1;
  reg        [63:0]   recordMems_0_spinal_port0;
  reg        [63:0]   recordMems_1_spinal_port0;
  reg        [63:0]   recordMems_2_spinal_port0;
  reg        [63:0]   recordMems_3_spinal_port0;
  reg        [63:0]   recordMems_4_spinal_port0;
  reg        [63:0]   recordMems_5_spinal_port0;
  reg        [63:0]   recordMems_6_spinal_port0;
  reg        [63:0]   recordMems_7_spinal_port0;
  reg        [63:0]   recordMems_8_spinal_port0;
  reg        [63:0]   recordMems_9_spinal_port0;
  reg        [63:0]   recordMems_10_spinal_port0;
  reg        [63:0]   recordMems_11_spinal_port0;
  reg        [63:0]   recordMems_12_spinal_port0;
  reg        [63:0]   recordMems_13_spinal_port0;
  reg        [63:0]   recordMems_14_spinal_port0;
  reg        [63:0]   recordMems_15_spinal_port0;
  wire                starts_0_ccToggle_io_output_valid;
  wire       [31:0]   starts_0_ccToggle_io_output_payload;
  wire                starts_0_ccToggle_reset_synchronized_1;
  wire                starts_1_ccToggle_io_output_valid;
  wire       [31:0]   starts_1_ccToggle_io_output_payload;
  wire                starts_2_ccToggle_io_output_valid;
  wire       [31:0]   starts_2_ccToggle_io_output_payload;
  wire                starts_3_ccToggle_io_output_valid;
  wire       [31:0]   starts_3_ccToggle_io_output_payload;
  wire                starts_4_ccToggle_io_output_valid;
  wire       [31:0]   starts_4_ccToggle_io_output_payload;
  wire                starts_5_ccToggle_io_output_valid;
  wire       [31:0]   starts_5_ccToggle_io_output_payload;
  wire                starts_6_ccToggle_io_output_valid;
  wire       [31:0]   starts_6_ccToggle_io_output_payload;
  wire                starts_7_ccToggle_io_output_valid;
  wire       [31:0]   starts_7_ccToggle_io_output_payload;
  wire                starts_8_ccToggle_io_output_valid;
  wire       [31:0]   starts_8_ccToggle_io_output_payload;
  wire                starts_9_ccToggle_io_output_valid;
  wire       [31:0]   starts_9_ccToggle_io_output_payload;
  wire                starts_10_ccToggle_io_output_valid;
  wire       [31:0]   starts_10_ccToggle_io_output_payload;
  wire                starts_11_ccToggle_io_output_valid;
  wire       [31:0]   starts_11_ccToggle_io_output_payload;
  wire                starts_12_ccToggle_io_output_valid;
  wire       [31:0]   starts_12_ccToggle_io_output_payload;
  wire                starts_13_ccToggle_io_output_valid;
  wire       [31:0]   starts_13_ccToggle_io_output_payload;
  wire                starts_14_ccToggle_io_output_valid;
  wire       [31:0]   starts_14_ccToggle_io_output_payload;
  wire                starts_15_ccToggle_io_output_valid;
  wire       [31:0]   starts_15_ccToggle_io_output_payload;
  wire       [10:0]   dsp_recAddr_buffercc_io_dataOut;
  wire       [15:0]   bufferCC_19_io_dataOut;
  wire       [1:0]    _zz_Axi4Incr_alignMask;
  wire       [11:0]   _zz_Axi4Incr_baseIncr;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_2;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_3;
  reg        [11:0]   _zz_Axi4Incr_result;
  wire       [10:0]   _zz_Axi4Incr_result_1;
  wire       [0:0]    _zz_Axi4Incr_result_2;
  wire       [9:0]    _zz_Axi4Incr_result_3;
  wire       [1:0]    _zz_Axi4Incr_result_4;
  wire       [8:0]    _zz_Axi4Incr_result_5;
  wire       [2:0]    _zz_Axi4Incr_result_6;
  wire       [7:0]    _zz_Axi4Incr_result_7;
  wire       [3:0]    _zz_Axi4Incr_result_8;
  wire       [6:0]    _zz_Axi4Incr_result_9;
  wire       [4:0]    _zz_Axi4Incr_result_10;
  wire       [5:0]    _zz_Axi4Incr_result_11;
  wire       [5:0]    _zz_Axi4Incr_result_12;
  wire       [1:0]    _zz_Axi4Incr_alignMask_1;
  wire       [11:0]   _zz_Axi4Incr_baseIncr_1;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_1_1;
  wire       [2:0]    _zz_Axi4Incr_wrapCase_1_2;
  reg        [11:0]   _zz_Axi4Incr_result_1_1;
  wire       [10:0]   _zz_Axi4Incr_result_1_2;
  wire       [0:0]    _zz_Axi4Incr_result_1_3;
  wire       [9:0]    _zz_Axi4Incr_result_1_4;
  wire       [1:0]    _zz_Axi4Incr_result_1_5;
  wire       [8:0]    _zz_Axi4Incr_result_1_6;
  wire       [2:0]    _zz_Axi4Incr_result_1_7;
  wire       [7:0]    _zz_Axi4Incr_result_1_8;
  wire       [3:0]    _zz_Axi4Incr_result_1_9;
  wire       [6:0]    _zz_Axi4Incr_result_1_10;
  wire       [4:0]    _zz_Axi4Incr_result_1_11;
  wire       [5:0]    _zz_Axi4Incr_result_1_12;
  wire       [5:0]    _zz_Axi4Incr_result_1_13;
  wire       [9:0]    _zz_pulseMems_0_port;
  wire       [14:0]   _zz_pulseMems_0_port_1;
  wire       [31:0]   _zz_pulseMems_0_port_2;
  wire       [255:0]  _zz_pulseMems_0_port_3;
  wire       [7:0]    _zz_pulseMems_0_port_4;
  wire       [14:0]   _zz__zz_4;
  wire       [31:0]   _zz__zz_4_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data;
  wire                _zz_recordMems_0_port;
  wire                _zz__zz_factory_readRsp_data_2;
  wire       [9:0]    _zz_pulseMems_1_port;
  wire       [14:0]   _zz_pulseMems_1_port_1;
  wire       [31:0]   _zz_pulseMems_1_port_2;
  wire       [255:0]  _zz_pulseMems_1_port_3;
  wire       [7:0]    _zz_pulseMems_1_port_4;
  wire       [14:0]   _zz__zz_9;
  wire       [31:0]   _zz__zz_9_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_3;
  wire                _zz_recordMems_1_port;
  wire                _zz__zz_factory_readRsp_data_5;
  wire       [9:0]    _zz_pulseMems_2_port;
  wire       [14:0]   _zz_pulseMems_2_port_1;
  wire       [31:0]   _zz_pulseMems_2_port_2;
  wire       [255:0]  _zz_pulseMems_2_port_3;
  wire       [7:0]    _zz_pulseMems_2_port_4;
  wire       [14:0]   _zz__zz_14;
  wire       [31:0]   _zz__zz_14_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_6;
  wire                _zz_recordMems_2_port;
  wire                _zz__zz_factory_readRsp_data_8;
  wire       [9:0]    _zz_pulseMems_3_port;
  wire       [14:0]   _zz_pulseMems_3_port_1;
  wire       [31:0]   _zz_pulseMems_3_port_2;
  wire       [255:0]  _zz_pulseMems_3_port_3;
  wire       [7:0]    _zz_pulseMems_3_port_4;
  wire       [14:0]   _zz__zz_19;
  wire       [31:0]   _zz__zz_19_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_9;
  wire                _zz_recordMems_3_port;
  wire                _zz__zz_factory_readRsp_data_11;
  wire       [9:0]    _zz_pulseMems_4_port;
  wire       [14:0]   _zz_pulseMems_4_port_1;
  wire       [31:0]   _zz_pulseMems_4_port_2;
  wire       [255:0]  _zz_pulseMems_4_port_3;
  wire       [7:0]    _zz_pulseMems_4_port_4;
  wire       [14:0]   _zz__zz_24;
  wire       [31:0]   _zz__zz_24_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_12;
  wire                _zz_recordMems_4_port;
  wire                _zz__zz_factory_readRsp_data_14;
  wire       [9:0]    _zz_pulseMems_5_port;
  wire       [14:0]   _zz_pulseMems_5_port_1;
  wire       [31:0]   _zz_pulseMems_5_port_2;
  wire       [255:0]  _zz_pulseMems_5_port_3;
  wire       [7:0]    _zz_pulseMems_5_port_4;
  wire       [14:0]   _zz__zz_29;
  wire       [31:0]   _zz__zz_29_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_15;
  wire                _zz_recordMems_5_port;
  wire                _zz__zz_factory_readRsp_data_17;
  wire       [9:0]    _zz_pulseMems_6_port;
  wire       [14:0]   _zz_pulseMems_6_port_1;
  wire       [31:0]   _zz_pulseMems_6_port_2;
  wire       [255:0]  _zz_pulseMems_6_port_3;
  wire       [7:0]    _zz_pulseMems_6_port_4;
  wire       [14:0]   _zz__zz_34;
  wire       [31:0]   _zz__zz_34_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_18;
  wire                _zz_recordMems_6_port;
  wire                _zz__zz_factory_readRsp_data_20;
  wire       [9:0]    _zz_pulseMems_7_port;
  wire       [14:0]   _zz_pulseMems_7_port_1;
  wire       [31:0]   _zz_pulseMems_7_port_2;
  wire       [255:0]  _zz_pulseMems_7_port_3;
  wire       [7:0]    _zz_pulseMems_7_port_4;
  wire       [14:0]   _zz__zz_39;
  wire       [31:0]   _zz__zz_39_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_21;
  wire                _zz_recordMems_7_port;
  wire                _zz__zz_factory_readRsp_data_23;
  wire       [9:0]    _zz_pulseMems_8_port;
  wire       [14:0]   _zz_pulseMems_8_port_1;
  wire       [31:0]   _zz_pulseMems_8_port_2;
  wire       [255:0]  _zz_pulseMems_8_port_3;
  wire       [7:0]    _zz_pulseMems_8_port_4;
  wire       [14:0]   _zz__zz_44;
  wire       [31:0]   _zz__zz_44_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_24;
  wire                _zz_recordMems_8_port;
  wire                _zz__zz_factory_readRsp_data_26;
  wire       [9:0]    _zz_pulseMems_9_port;
  wire       [14:0]   _zz_pulseMems_9_port_1;
  wire       [31:0]   _zz_pulseMems_9_port_2;
  wire       [255:0]  _zz_pulseMems_9_port_3;
  wire       [7:0]    _zz_pulseMems_9_port_4;
  wire       [14:0]   _zz__zz_49;
  wire       [31:0]   _zz__zz_49_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_27;
  wire                _zz_recordMems_9_port;
  wire                _zz__zz_factory_readRsp_data_29;
  wire       [9:0]    _zz_pulseMems_10_port;
  wire       [14:0]   _zz_pulseMems_10_port_1;
  wire       [31:0]   _zz_pulseMems_10_port_2;
  wire       [255:0]  _zz_pulseMems_10_port_3;
  wire       [7:0]    _zz_pulseMems_10_port_4;
  wire       [14:0]   _zz__zz_54;
  wire       [31:0]   _zz__zz_54_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_30;
  wire                _zz_recordMems_10_port;
  wire                _zz__zz_factory_readRsp_data_32;
  wire       [9:0]    _zz_pulseMems_11_port;
  wire       [14:0]   _zz_pulseMems_11_port_1;
  wire       [31:0]   _zz_pulseMems_11_port_2;
  wire       [255:0]  _zz_pulseMems_11_port_3;
  wire       [7:0]    _zz_pulseMems_11_port_4;
  wire       [14:0]   _zz__zz_59;
  wire       [31:0]   _zz__zz_59_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_33;
  wire                _zz_recordMems_11_port;
  wire                _zz__zz_factory_readRsp_data_35;
  wire       [9:0]    _zz_pulseMems_12_port;
  wire       [14:0]   _zz_pulseMems_12_port_1;
  wire       [31:0]   _zz_pulseMems_12_port_2;
  wire       [255:0]  _zz_pulseMems_12_port_3;
  wire       [7:0]    _zz_pulseMems_12_port_4;
  wire       [14:0]   _zz__zz_64;
  wire       [31:0]   _zz__zz_64_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_36;
  wire                _zz_recordMems_12_port;
  wire                _zz__zz_factory_readRsp_data_38;
  wire       [9:0]    _zz_pulseMems_13_port;
  wire       [14:0]   _zz_pulseMems_13_port_1;
  wire       [31:0]   _zz_pulseMems_13_port_2;
  wire       [255:0]  _zz_pulseMems_13_port_3;
  wire       [7:0]    _zz_pulseMems_13_port_4;
  wire       [14:0]   _zz__zz_69;
  wire       [31:0]   _zz__zz_69_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_39;
  wire                _zz_recordMems_13_port;
  wire                _zz__zz_factory_readRsp_data_41;
  wire       [9:0]    _zz_pulseMems_14_port;
  wire       [14:0]   _zz_pulseMems_14_port_1;
  wire       [31:0]   _zz_pulseMems_14_port_2;
  wire       [255:0]  _zz_pulseMems_14_port_3;
  wire       [7:0]    _zz_pulseMems_14_port_4;
  wire       [14:0]   _zz__zz_74;
  wire       [31:0]   _zz__zz_74_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_42;
  wire                _zz_recordMems_14_port;
  wire                _zz__zz_factory_readRsp_data_44;
  wire       [9:0]    _zz_pulseMems_15_port;
  wire       [14:0]   _zz_pulseMems_15_port_1;
  wire       [31:0]   _zz_pulseMems_15_port_2;
  wire       [255:0]  _zz_pulseMems_15_port_3;
  wire       [7:0]    _zz_pulseMems_15_port_4;
  wire       [14:0]   _zz__zz_79;
  wire       [31:0]   _zz__zz_79_1;
  wire       [31:0]   _zz__zz_factory_readRsp_data_45;
  wire                _zz_recordMems_15_port;
  wire                _zz__zz_factory_readRsp_data_47;
  wire                _zz_pulseMems_0_port_5;
  wire                _zz_dsp_chans_0_sample;
  wire                _zz_pulseMems_1_port_5;
  wire                _zz_dsp_chans_1_sample;
  wire                _zz_pulseMems_2_port_5;
  wire                _zz_dsp_chans_2_sample;
  wire                _zz_pulseMems_3_port_5;
  wire                _zz_dsp_chans_3_sample;
  wire                _zz_pulseMems_4_port_5;
  wire                _zz_dsp_chans_4_sample;
  wire                _zz_pulseMems_5_port_5;
  wire                _zz_dsp_chans_5_sample;
  wire                _zz_pulseMems_6_port_5;
  wire                _zz_dsp_chans_6_sample;
  wire                _zz_pulseMems_7_port_5;
  wire                _zz_dsp_chans_7_sample;
  wire                _zz_pulseMems_8_port_5;
  wire                _zz_dsp_chans_8_sample;
  wire                _zz_pulseMems_9_port_5;
  wire                _zz_dsp_chans_9_sample;
  wire                _zz_pulseMems_10_port_5;
  wire                _zz_dsp_chans_10_sample;
  wire                _zz_pulseMems_11_port_5;
  wire                _zz_dsp_chans_11_sample;
  wire                _zz_pulseMems_12_port_5;
  wire                _zz_dsp_chans_12_sample;
  wire                _zz_pulseMems_13_port_5;
  wire                _zz_dsp_chans_13_sample;
  wire                _zz_pulseMems_14_port_5;
  wire                _zz_dsp_chans_14_sample;
  wire                _zz_pulseMems_15_port_5;
  wire                _zz_dsp_chans_15_sample;
  wire       [0:0]    _zz_dsp_anyStart;
  wire       [4:0]    _zz_dsp_anyStart_1;
  wire       [0:0]    _zz_dsp_anyFire;
  wire       [4:0]    _zz_dsp_anyFire_1;
  wire       [0:0]    _zz_io_dataIn;
  wire       [4:0]    _zz_io_dataIn_1;
  reg        [31:0]   _zz_factory_readRsp_data_48;
  wire       [0:0]    _zz_factory_readRsp_data_49;
  reg        [31:0]   _zz_factory_readRsp_data_50;
  wire       [0:0]    _zz_factory_readRsp_data_51;
  reg        [31:0]   _zz_factory_readRsp_data_52;
  wire       [0:0]    _zz_factory_readRsp_data_53;
  reg        [31:0]   _zz_factory_readRsp_data_54;
  wire       [0:0]    _zz_factory_readRsp_data_55;
  reg        [31:0]   _zz_factory_readRsp_data_56;
  wire       [0:0]    _zz_factory_readRsp_data_57;
  reg        [31:0]   _zz_factory_readRsp_data_58;
  wire       [0:0]    _zz_factory_readRsp_data_59;
  reg        [31:0]   _zz_factory_readRsp_data_60;
  wire       [0:0]    _zz_factory_readRsp_data_61;
  reg        [31:0]   _zz_factory_readRsp_data_62;
  wire       [0:0]    _zz_factory_readRsp_data_63;
  reg        [31:0]   _zz_factory_readRsp_data_64;
  wire       [0:0]    _zz_factory_readRsp_data_65;
  reg        [31:0]   _zz_factory_readRsp_data_66;
  wire       [0:0]    _zz_factory_readRsp_data_67;
  reg        [31:0]   _zz_factory_readRsp_data_68;
  wire       [0:0]    _zz_factory_readRsp_data_69;
  reg        [31:0]   _zz_factory_readRsp_data_70;
  wire       [0:0]    _zz_factory_readRsp_data_71;
  reg        [31:0]   _zz_factory_readRsp_data_72;
  wire       [0:0]    _zz_factory_readRsp_data_73;
  reg        [31:0]   _zz_factory_readRsp_data_74;
  wire       [0:0]    _zz_factory_readRsp_data_75;
  reg        [31:0]   _zz_factory_readRsp_data_76;
  wire       [0:0]    _zz_factory_readRsp_data_77;
  reg        [31:0]   _zz_factory_readRsp_data_78;
  wire       [0:0]    _zz_factory_readRsp_data_79;
  wire                factory_readErrorFlag;
  wire                factory_writeErrorFlag;
  reg                 factory_readHaltRequest;
  wire                factory_writeHaltRequest;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [31:0]   unburstify_result_payload_fragment_addr;
  reg        [1:0]    unburstify_result_payload_fragment_id;
  reg        [3:0]    unburstify_result_payload_fragment_region;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg        [0:0]    unburstify_result_payload_fragment_lock;
  reg        [3:0]    unburstify_result_payload_fragment_cache;
  reg        [3:0]    unburstify_result_payload_fragment_qos;
  reg        [2:0]    unburstify_result_payload_fragment_prot;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [31:0]   unburstify_buffer_transaction_addr;
  reg        [1:0]    unburstify_buffer_transaction_id;
  reg        [3:0]    unburstify_buffer_transaction_region;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg        [0:0]    unburstify_buffer_transaction_lock;
  reg        [3:0]    unburstify_buffer_transaction_cache;
  reg        [3:0]    unburstify_buffer_transaction_qos;
  reg        [2:0]    unburstify_buffer_transaction_prot;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [31:0]   Axi4Incr_result;
  wire       [19:0]   Axi4Incr_highCat;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_Axi4Incr_wrapCase;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                when_Axi4Channel_l337;
  wire                factory_writeJoinEvent_valid;
  reg                 factory_writeJoinEvent_ready;
  wire                factory_writeOccur;
  reg                 factory_writeRsp_valid;
  reg                 factory_writeRsp_ready;
  wire       [1:0]    factory_writeRsp_payload_id;
  reg        [1:0]    factory_writeRsp_payload_resp;
  wire                factory_writeRsp_stage_valid;
  wire                factory_writeRsp_stage_ready;
  wire       [1:0]    factory_writeRsp_stage_payload_id;
  wire       [1:0]    factory_writeRsp_stage_payload_resp;
  reg                 factory_writeRsp_rValid;
  reg        [1:0]    factory_writeRsp_rData_id;
  reg        [1:0]    factory_writeRsp_rData_resp;
  wire                when_Stream_l477;
  reg                 unburstify_result_valid_1;
  reg                 unburstify_result_ready_1;
  reg                 unburstify_result_payload_last_1;
  reg        [31:0]   unburstify_result_payload_fragment_addr_1;
  reg        [1:0]    unburstify_result_payload_fragment_id_1;
  reg        [3:0]    unburstify_result_payload_fragment_region_1;
  reg        [2:0]    unburstify_result_payload_fragment_size_1;
  reg        [1:0]    unburstify_result_payload_fragment_burst_1;
  reg        [0:0]    unburstify_result_payload_fragment_lock_1;
  reg        [3:0]    unburstify_result_payload_fragment_cache_1;
  reg        [3:0]    unburstify_result_payload_fragment_qos_1;
  reg        [2:0]    unburstify_result_payload_fragment_prot_1;
  wire                unburstify_doResult_1;
  reg                 unburstify_buffer_valid_1;
  reg        [7:0]    unburstify_buffer_len_1;
  reg        [7:0]    unburstify_buffer_beat_1;
  reg        [31:0]   unburstify_buffer_transaction_addr_1;
  reg        [1:0]    unburstify_buffer_transaction_id_1;
  reg        [3:0]    unburstify_buffer_transaction_region_1;
  reg        [2:0]    unburstify_buffer_transaction_size_1;
  reg        [1:0]    unburstify_buffer_transaction_burst_1;
  reg        [0:0]    unburstify_buffer_transaction_lock_1;
  reg        [3:0]    unburstify_buffer_transaction_cache_1;
  reg        [3:0]    unburstify_buffer_transaction_qos_1;
  reg        [2:0]    unburstify_buffer_transaction_prot_1;
  wire                unburstify_buffer_last_1;
  wire       [1:0]    Axi4Incr_validSize_1;
  reg        [31:0]   Axi4Incr_result_1;
  wire       [19:0]   Axi4Incr_highCat_1;
  wire       [2:0]    Axi4Incr_sizeValue_1;
  wire       [11:0]   Axi4Incr_alignMask_1;
  wire       [11:0]   Axi4Incr_base_1;
  wire       [11:0]   Axi4Incr_baseIncr_1;
  reg        [1:0]    _zz_Axi4Incr_wrapCase_1;
  wire       [2:0]    Axi4Incr_wrapCase_1;
  wire                when_Axi4Channel_l337_1;
  wire                factory_readDataStage_valid;
  wire                factory_readDataStage_ready;
  wire                factory_readDataStage_payload_last;
  wire       [31:0]   factory_readDataStage_payload_fragment_addr;
  wire       [1:0]    factory_readDataStage_payload_fragment_id;
  wire       [3:0]    factory_readDataStage_payload_fragment_region;
  wire       [2:0]    factory_readDataStage_payload_fragment_size;
  wire       [1:0]    factory_readDataStage_payload_fragment_burst;
  wire       [0:0]    factory_readDataStage_payload_fragment_lock;
  wire       [3:0]    factory_readDataStage_payload_fragment_cache;
  wire       [3:0]    factory_readDataStage_payload_fragment_qos;
  wire       [2:0]    factory_readDataStage_payload_fragment_prot;
  reg                 unburstify_result_rValid;
  reg                 unburstify_result_rData_last;
  reg        [31:0]   unburstify_result_rData_fragment_addr;
  reg        [1:0]    unburstify_result_rData_fragment_id;
  reg        [3:0]    unburstify_result_rData_fragment_region;
  reg        [2:0]    unburstify_result_rData_fragment_size;
  reg        [1:0]    unburstify_result_rData_fragment_burst;
  reg        [0:0]    unburstify_result_rData_fragment_lock;
  reg        [3:0]    unburstify_result_rData_fragment_cache;
  reg        [3:0]    unburstify_result_rData_fragment_qos;
  reg        [2:0]    unburstify_result_rData_fragment_prot;
  wire                when_Stream_l477_1;
  reg        [31:0]   factory_readRsp_data;
  wire       [1:0]    factory_readRsp_id;
  reg        [1:0]    factory_readRsp_resp;
  wire                factory_readRsp_last;
  wire                _zz_factory_readDataStage_ready;
  wire                factory_readDataStage_haltWhen_valid;
  wire                factory_readDataStage_haltWhen_ready;
  wire                factory_readDataStage_haltWhen_payload_last;
  wire       [31:0]   factory_readDataStage_haltWhen_payload_fragment_addr;
  wire       [1:0]    factory_readDataStage_haltWhen_payload_fragment_id;
  wire       [3:0]    factory_readDataStage_haltWhen_payload_fragment_region;
  wire       [2:0]    factory_readDataStage_haltWhen_payload_fragment_size;
  wire       [1:0]    factory_readDataStage_haltWhen_payload_fragment_burst;
  wire       [0:0]    factory_readDataStage_haltWhen_payload_fragment_lock;
  wire       [3:0]    factory_readDataStage_haltWhen_payload_fragment_cache;
  wire       [3:0]    factory_readDataStage_haltWhen_payload_fragment_qos;
  wire       [2:0]    factory_readDataStage_haltWhen_payload_fragment_prot;
  wire                factory_readDataStage_haltWhen_translated_valid;
  wire                factory_readDataStage_haltWhen_translated_ready;
  wire       [31:0]   factory_readDataStage_haltWhen_translated_payload_data;
  wire       [1:0]    factory_readDataStage_haltWhen_translated_payload_id;
  wire       [1:0]    factory_readDataStage_haltWhen_translated_payload_resp;
  wire                factory_readDataStage_haltWhen_translated_payload_last;
  wire                factory_readOccur;
  wire       [31:0]   factory_readAddressMasked;
  wire       [31:0]   factory_writeAddressMasked;
  reg                 starts_0_valid;
  wire       [31:0]   starts_0_payload;
  reg                 starts_1_valid;
  wire       [31:0]   starts_1_payload;
  reg                 starts_2_valid;
  wire       [31:0]   starts_2_payload;
  reg                 starts_3_valid;
  wire       [31:0]   starts_3_payload;
  reg                 starts_4_valid;
  wire       [31:0]   starts_4_payload;
  reg                 starts_5_valid;
  wire       [31:0]   starts_5_payload;
  reg                 starts_6_valid;
  wire       [31:0]   starts_6_payload;
  reg                 starts_7_valid;
  wire       [31:0]   starts_7_payload;
  reg                 starts_8_valid;
  wire       [31:0]   starts_8_payload;
  reg                 starts_9_valid;
  wire       [31:0]   starts_9_payload;
  reg                 starts_10_valid;
  wire       [31:0]   starts_10_payload;
  reg                 starts_11_valid;
  wire       [31:0]   starts_11_payload;
  reg                 starts_12_valid;
  wire       [31:0]   starts_12_payload;
  reg                 starts_13_valid;
  wire       [31:0]   starts_13_payload;
  reg                 starts_14_valid;
  wire       [31:0]   starts_14_payload;
  reg                 starts_15_valid;
  wire       [31:0]   starts_15_payload;
  reg                 _zz_1;
  wire       [31:0]   _zz_3;
  reg        [7:0]    _zz_4;
  wire       [12:0]   _zz_factory_readRsp_data;
  wire       [9:0]    _zz_factory_readRsp_data_1;
  wire       [63:0]   _zz_factory_readRsp_data_2;
  reg                 _zz_when_BusSlaveFactory_l709;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_1;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_2;
  wire                _zz_when_BusSlaveFactory_l709_3;
  reg                 _zz_6;
  wire       [31:0]   _zz_8;
  reg        [7:0]    _zz_9;
  wire       [12:0]   _zz_factory_readRsp_data_3;
  wire       [9:0]    _zz_factory_readRsp_data_4;
  wire       [63:0]   _zz_factory_readRsp_data_5;
  reg                 _zz_when_BusSlaveFactory_l709_4;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_5;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_6;
  wire                _zz_when_BusSlaveFactory_l709_7;
  reg                 _zz_11;
  wire       [31:0]   _zz_13;
  reg        [7:0]    _zz_14;
  wire       [12:0]   _zz_factory_readRsp_data_6;
  wire       [9:0]    _zz_factory_readRsp_data_7;
  wire       [63:0]   _zz_factory_readRsp_data_8;
  reg                 _zz_when_BusSlaveFactory_l709_8;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_9;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_10;
  wire                _zz_when_BusSlaveFactory_l709_11;
  reg                 _zz_16;
  wire       [31:0]   _zz_18;
  reg        [7:0]    _zz_19;
  wire       [12:0]   _zz_factory_readRsp_data_9;
  wire       [9:0]    _zz_factory_readRsp_data_10;
  wire       [63:0]   _zz_factory_readRsp_data_11;
  reg                 _zz_when_BusSlaveFactory_l709_12;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_13;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_14;
  wire                _zz_when_BusSlaveFactory_l709_15;
  reg                 _zz_21;
  wire       [31:0]   _zz_23;
  reg        [7:0]    _zz_24;
  wire       [12:0]   _zz_factory_readRsp_data_12;
  wire       [9:0]    _zz_factory_readRsp_data_13;
  wire       [63:0]   _zz_factory_readRsp_data_14;
  reg                 _zz_when_BusSlaveFactory_l709_16;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_17;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_18;
  wire                _zz_when_BusSlaveFactory_l709_19;
  reg                 _zz_26;
  wire       [31:0]   _zz_28;
  reg        [7:0]    _zz_29;
  wire       [12:0]   _zz_factory_readRsp_data_15;
  wire       [9:0]    _zz_factory_readRsp_data_16;
  wire       [63:0]   _zz_factory_readRsp_data_17;
  reg                 _zz_when_BusSlaveFactory_l709_20;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_21;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_22;
  wire                _zz_when_BusSlaveFactory_l709_23;
  reg                 _zz_31;
  wire       [31:0]   _zz_33;
  reg        [7:0]    _zz_34;
  wire       [12:0]   _zz_factory_readRsp_data_18;
  wire       [9:0]    _zz_factory_readRsp_data_19;
  wire       [63:0]   _zz_factory_readRsp_data_20;
  reg                 _zz_when_BusSlaveFactory_l709_24;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_25;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_26;
  wire                _zz_when_BusSlaveFactory_l709_27;
  reg                 _zz_36;
  wire       [31:0]   _zz_38;
  reg        [7:0]    _zz_39;
  wire       [12:0]   _zz_factory_readRsp_data_21;
  wire       [9:0]    _zz_factory_readRsp_data_22;
  wire       [63:0]   _zz_factory_readRsp_data_23;
  reg                 _zz_when_BusSlaveFactory_l709_28;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_29;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_30;
  wire                _zz_when_BusSlaveFactory_l709_31;
  reg                 _zz_41;
  wire       [31:0]   _zz_43;
  reg        [7:0]    _zz_44;
  wire       [12:0]   _zz_factory_readRsp_data_24;
  wire       [9:0]    _zz_factory_readRsp_data_25;
  wire       [63:0]   _zz_factory_readRsp_data_26;
  reg                 _zz_when_BusSlaveFactory_l709_32;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_33;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_34;
  wire                _zz_when_BusSlaveFactory_l709_35;
  reg                 _zz_46;
  wire       [31:0]   _zz_48;
  reg        [7:0]    _zz_49;
  wire       [12:0]   _zz_factory_readRsp_data_27;
  wire       [9:0]    _zz_factory_readRsp_data_28;
  wire       [63:0]   _zz_factory_readRsp_data_29;
  reg                 _zz_when_BusSlaveFactory_l709_36;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_37;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_38;
  wire                _zz_when_BusSlaveFactory_l709_39;
  reg                 _zz_51;
  wire       [31:0]   _zz_53;
  reg        [7:0]    _zz_54;
  wire       [12:0]   _zz_factory_readRsp_data_30;
  wire       [9:0]    _zz_factory_readRsp_data_31;
  wire       [63:0]   _zz_factory_readRsp_data_32;
  reg                 _zz_when_BusSlaveFactory_l709_40;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_41;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_42;
  wire                _zz_when_BusSlaveFactory_l709_43;
  reg                 _zz_56;
  wire       [31:0]   _zz_58;
  reg        [7:0]    _zz_59;
  wire       [12:0]   _zz_factory_readRsp_data_33;
  wire       [9:0]    _zz_factory_readRsp_data_34;
  wire       [63:0]   _zz_factory_readRsp_data_35;
  reg                 _zz_when_BusSlaveFactory_l709_44;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_45;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_46;
  wire                _zz_when_BusSlaveFactory_l709_47;
  reg                 _zz_61;
  wire       [31:0]   _zz_63;
  reg        [7:0]    _zz_64;
  wire       [12:0]   _zz_factory_readRsp_data_36;
  wire       [9:0]    _zz_factory_readRsp_data_37;
  wire       [63:0]   _zz_factory_readRsp_data_38;
  reg                 _zz_when_BusSlaveFactory_l709_48;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_49;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_50;
  wire                _zz_when_BusSlaveFactory_l709_51;
  reg                 _zz_66;
  wire       [31:0]   _zz_68;
  reg        [7:0]    _zz_69;
  wire       [12:0]   _zz_factory_readRsp_data_39;
  wire       [9:0]    _zz_factory_readRsp_data_40;
  wire       [63:0]   _zz_factory_readRsp_data_41;
  reg                 _zz_when_BusSlaveFactory_l709_52;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_53;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_54;
  wire                _zz_when_BusSlaveFactory_l709_55;
  reg                 _zz_71;
  wire       [31:0]   _zz_73;
  reg        [7:0]    _zz_74;
  wire       [12:0]   _zz_factory_readRsp_data_42;
  wire       [9:0]    _zz_factory_readRsp_data_43;
  wire       [63:0]   _zz_factory_readRsp_data_44;
  reg                 _zz_when_BusSlaveFactory_l709_56;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_57;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_58;
  wire                _zz_when_BusSlaveFactory_l709_59;
  reg                 _zz_76;
  wire       [31:0]   _zz_78;
  reg        [7:0]    _zz_79;
  wire       [12:0]   _zz_factory_readRsp_data_45;
  wire       [9:0]    _zz_factory_readRsp_data_46;
  wire       [63:0]   _zz_factory_readRsp_data_47;
  reg                 _zz_when_BusSlaveFactory_l709_60;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_61;
  reg        [0:0]    _zz_when_BusSlaveFactory_l709_62;
  wire                _zz_when_BusSlaveFactory_l709_63;
  reg        [31:0]   dsp_chans_0_timer;
  reg        [9:0]    dsp_chans_0_addr;
  reg                 dsp_chans_0_fire;
  wire                when_SimpleAwg_l81;
  wire       [255:0]  dsp_chans_0_sample;
  reg                 dsp_chans_0_fire_regNext;
  reg        [255:0]  _zz_io_dac_0_payload;
  reg        [255:0]  _zz_io_dac_0_payload_1;
  reg        [31:0]   dsp_chans_1_timer;
  reg        [9:0]    dsp_chans_1_addr;
  reg                 dsp_chans_1_fire;
  wire                when_SimpleAwg_l81_1;
  wire       [255:0]  dsp_chans_1_sample;
  reg                 dsp_chans_1_fire_regNext;
  reg        [255:0]  _zz_io_dac_1_payload;
  reg        [255:0]  _zz_io_dac_1_payload_1;
  reg        [31:0]   dsp_chans_2_timer;
  reg        [9:0]    dsp_chans_2_addr;
  reg                 dsp_chans_2_fire;
  wire                when_SimpleAwg_l81_2;
  wire       [255:0]  dsp_chans_2_sample;
  reg                 dsp_chans_2_fire_regNext;
  reg        [255:0]  _zz_io_dac_2_payload;
  reg        [255:0]  _zz_io_dac_2_payload_1;
  reg        [31:0]   dsp_chans_3_timer;
  reg        [9:0]    dsp_chans_3_addr;
  reg                 dsp_chans_3_fire;
  wire                when_SimpleAwg_l81_3;
  wire       [255:0]  dsp_chans_3_sample;
  reg                 dsp_chans_3_fire_regNext;
  reg        [255:0]  _zz_io_dac_3_payload;
  reg        [255:0]  _zz_io_dac_3_payload_1;
  reg        [31:0]   dsp_chans_4_timer;
  reg        [9:0]    dsp_chans_4_addr;
  reg                 dsp_chans_4_fire;
  wire                when_SimpleAwg_l81_4;
  wire       [255:0]  dsp_chans_4_sample;
  reg                 dsp_chans_4_fire_regNext;
  reg        [255:0]  _zz_io_dac_4_payload;
  reg        [255:0]  _zz_io_dac_4_payload_1;
  reg        [31:0]   dsp_chans_5_timer;
  reg        [9:0]    dsp_chans_5_addr;
  reg                 dsp_chans_5_fire;
  wire                when_SimpleAwg_l81_5;
  wire       [255:0]  dsp_chans_5_sample;
  reg                 dsp_chans_5_fire_regNext;
  reg        [255:0]  _zz_io_dac_5_payload;
  reg        [255:0]  _zz_io_dac_5_payload_1;
  reg        [31:0]   dsp_chans_6_timer;
  reg        [9:0]    dsp_chans_6_addr;
  reg                 dsp_chans_6_fire;
  wire                when_SimpleAwg_l81_6;
  wire       [255:0]  dsp_chans_6_sample;
  reg                 dsp_chans_6_fire_regNext;
  reg        [255:0]  _zz_io_dac_6_payload;
  reg        [255:0]  _zz_io_dac_6_payload_1;
  reg        [31:0]   dsp_chans_7_timer;
  reg        [9:0]    dsp_chans_7_addr;
  reg                 dsp_chans_7_fire;
  wire                when_SimpleAwg_l81_7;
  wire       [255:0]  dsp_chans_7_sample;
  reg                 dsp_chans_7_fire_regNext;
  reg        [255:0]  _zz_io_dac_7_payload;
  reg        [255:0]  _zz_io_dac_7_payload_1;
  reg        [31:0]   dsp_chans_8_timer;
  reg        [9:0]    dsp_chans_8_addr;
  reg                 dsp_chans_8_fire;
  wire                when_SimpleAwg_l81_8;
  wire       [255:0]  dsp_chans_8_sample;
  reg                 dsp_chans_8_fire_regNext;
  reg        [255:0]  _zz_io_dac_8_payload;
  reg        [255:0]  _zz_io_dac_8_payload_1;
  reg        [31:0]   dsp_chans_9_timer;
  reg        [9:0]    dsp_chans_9_addr;
  reg                 dsp_chans_9_fire;
  wire                when_SimpleAwg_l81_9;
  wire       [255:0]  dsp_chans_9_sample;
  reg                 dsp_chans_9_fire_regNext;
  reg        [255:0]  _zz_io_dac_9_payload;
  reg        [255:0]  _zz_io_dac_9_payload_1;
  reg        [31:0]   dsp_chans_10_timer;
  reg        [9:0]    dsp_chans_10_addr;
  reg                 dsp_chans_10_fire;
  wire                when_SimpleAwg_l81_10;
  wire       [255:0]  dsp_chans_10_sample;
  reg                 dsp_chans_10_fire_regNext;
  reg        [255:0]  _zz_io_dac_10_payload;
  reg        [255:0]  _zz_io_dac_10_payload_1;
  reg        [31:0]   dsp_chans_11_timer;
  reg        [9:0]    dsp_chans_11_addr;
  reg                 dsp_chans_11_fire;
  wire                when_SimpleAwg_l81_11;
  wire       [255:0]  dsp_chans_11_sample;
  reg                 dsp_chans_11_fire_regNext;
  reg        [255:0]  _zz_io_dac_11_payload;
  reg        [255:0]  _zz_io_dac_11_payload_1;
  reg        [31:0]   dsp_chans_12_timer;
  reg        [9:0]    dsp_chans_12_addr;
  reg                 dsp_chans_12_fire;
  wire                when_SimpleAwg_l81_12;
  wire       [255:0]  dsp_chans_12_sample;
  reg                 dsp_chans_12_fire_regNext;
  reg        [255:0]  _zz_io_dac_12_payload;
  reg        [255:0]  _zz_io_dac_12_payload_1;
  reg        [31:0]   dsp_chans_13_timer;
  reg        [9:0]    dsp_chans_13_addr;
  reg                 dsp_chans_13_fire;
  wire                when_SimpleAwg_l81_13;
  wire       [255:0]  dsp_chans_13_sample;
  reg                 dsp_chans_13_fire_regNext;
  reg        [255:0]  _zz_io_dac_13_payload;
  reg        [255:0]  _zz_io_dac_13_payload_1;
  reg        [31:0]   dsp_chans_14_timer;
  reg        [9:0]    dsp_chans_14_addr;
  reg                 dsp_chans_14_fire;
  wire                when_SimpleAwg_l81_14;
  wire       [255:0]  dsp_chans_14_sample;
  reg                 dsp_chans_14_fire_regNext;
  reg        [255:0]  _zz_io_dac_14_payload;
  reg        [255:0]  _zz_io_dac_14_payload_1;
  reg        [31:0]   dsp_chans_15_timer;
  reg        [9:0]    dsp_chans_15_addr;
  reg                 dsp_chans_15_fire;
  wire                when_SimpleAwg_l81_15;
  wire       [255:0]  dsp_chans_15_sample;
  reg                 dsp_chans_15_fire_regNext;
  reg        [255:0]  _zz_io_dac_15_payload;
  reg        [255:0]  _zz_io_dac_15_payload_1;
  wire                dsp_anyStart;
  (* MAX_FANOUT = "64" *) reg                 dsp_anyFire;
  reg        [10:0]   dsp_recAddr;
  wire                dsp_recording;
  reg                 dsp_recWrite;
  reg        [9:0]    dsp_recWrAddr;
  reg        [63:0]   io_adc_0_payload_regNext;
  reg        [63:0]   io_adc_1_payload_regNext;
  reg        [63:0]   io_adc_2_payload_regNext;
  reg        [63:0]   io_adc_3_payload_regNext;
  reg        [63:0]   io_adc_4_payload_regNext;
  reg        [63:0]   io_adc_5_payload_regNext;
  reg        [63:0]   io_adc_6_payload_regNext;
  reg        [63:0]   io_adc_7_payload_regNext;
  reg        [63:0]   io_adc_8_payload_regNext;
  reg        [63:0]   io_adc_9_payload_regNext;
  reg        [63:0]   io_adc_10_payload_regNext;
  reg        [63:0]   io_adc_11_payload_regNext;
  reg        [63:0]   io_adc_12_payload_regNext;
  reg        [63:0]   io_adc_13_payload_regNext;
  reg        [63:0]   io_adc_14_payload_regNext;
  reg        [63:0]   io_adc_15_payload_regNext;
  reg        [7:0]    dsp_led;
  reg                 dsp_chans_0_fire_regNext_1;
  wire                when_SimpleAwg_l113;
  reg                 dsp_chans_1_fire_regNext_1;
  wire                when_SimpleAwg_l113_1;
  reg                 dsp_chans_2_fire_regNext_1;
  wire                when_SimpleAwg_l113_2;
  reg                 dsp_chans_3_fire_regNext_1;
  wire                when_SimpleAwg_l113_3;
  reg                 dsp_chans_4_fire_regNext_1;
  wire                when_SimpleAwg_l113_4;
  reg                 dsp_chans_5_fire_regNext_1;
  wire                when_SimpleAwg_l113_5;
  reg                 dsp_chans_6_fire_regNext_1;
  wire                when_SimpleAwg_l113_6;
  reg                 dsp_chans_7_fire_regNext_1;
  wire                when_SimpleAwg_l113_7;
  wire                when_Axi4SlaveFactory_l89;
  wire                when_Axi4SlaveFactory_l89_1;
  wire                when_Axi4SlaveFactory_l89_2;
  wire                when_Axi4SlaveFactory_l89_3;
  wire                when_Axi4SlaveFactory_l89_4;
  wire                when_Axi4SlaveFactory_l89_5;
  wire                when_Axi4SlaveFactory_l89_6;
  wire                when_Axi4SlaveFactory_l89_7;
  wire                when_Axi4SlaveFactory_l89_8;
  wire                when_Axi4SlaveFactory_l89_9;
  wire                when_Axi4SlaveFactory_l89_10;
  wire                when_Axi4SlaveFactory_l89_11;
  wire                when_Axi4SlaveFactory_l89_12;
  wire                when_Axi4SlaveFactory_l89_13;
  wire                when_Axi4SlaveFactory_l89_14;
  wire                when_Axi4SlaveFactory_l89_15;
  wire                when_Axi4SlaveFactory_l107;
  wire                when_BusSlaveFactory_l709;
  wire                when_Axi4SlaveFactory_l107_1;
  wire                when_BusSlaveFactory_l709_1;
  wire                when_Axi4SlaveFactory_l107_2;
  wire                when_BusSlaveFactory_l709_2;
  wire                when_Axi4SlaveFactory_l107_3;
  wire                when_BusSlaveFactory_l709_3;
  wire                when_Axi4SlaveFactory_l107_4;
  wire                when_BusSlaveFactory_l709_4;
  wire                when_Axi4SlaveFactory_l107_5;
  wire                when_BusSlaveFactory_l709_5;
  wire                when_Axi4SlaveFactory_l107_6;
  wire                when_BusSlaveFactory_l709_6;
  wire                when_Axi4SlaveFactory_l107_7;
  wire                when_BusSlaveFactory_l709_7;
  wire                when_Axi4SlaveFactory_l107_8;
  wire                when_BusSlaveFactory_l709_8;
  wire                when_Axi4SlaveFactory_l107_9;
  wire                when_BusSlaveFactory_l709_9;
  wire                when_Axi4SlaveFactory_l107_10;
  wire                when_BusSlaveFactory_l709_10;
  wire                when_Axi4SlaveFactory_l107_11;
  wire                when_BusSlaveFactory_l709_11;
  wire                when_Axi4SlaveFactory_l107_12;
  wire                when_BusSlaveFactory_l709_12;
  wire                when_Axi4SlaveFactory_l107_13;
  wire                when_BusSlaveFactory_l709_13;
  wire                when_Axi4SlaveFactory_l107_14;
  wire                when_BusSlaveFactory_l709_14;
  wire                when_Axi4SlaveFactory_l107_15;
  wire                when_BusSlaveFactory_l709_15;
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_0_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_0symbol_read;
  reg [31:0] _zz_pulseMems_0symbol_read_1;
  reg [31:0] _zz_pulseMems_0symbol_read_2;
  reg [31:0] _zz_pulseMems_0symbol_read_3;
  reg [31:0] _zz_pulseMems_0symbol_read_4;
  reg [31:0] _zz_pulseMems_0symbol_read_5;
  reg [31:0] _zz_pulseMems_0symbol_read_6;
  reg [31:0] _zz_pulseMems_0symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_1_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_1symbol_read;
  reg [31:0] _zz_pulseMems_1symbol_read_1;
  reg [31:0] _zz_pulseMems_1symbol_read_2;
  reg [31:0] _zz_pulseMems_1symbol_read_3;
  reg [31:0] _zz_pulseMems_1symbol_read_4;
  reg [31:0] _zz_pulseMems_1symbol_read_5;
  reg [31:0] _zz_pulseMems_1symbol_read_6;
  reg [31:0] _zz_pulseMems_1symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_2_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_2symbol_read;
  reg [31:0] _zz_pulseMems_2symbol_read_1;
  reg [31:0] _zz_pulseMems_2symbol_read_2;
  reg [31:0] _zz_pulseMems_2symbol_read_3;
  reg [31:0] _zz_pulseMems_2symbol_read_4;
  reg [31:0] _zz_pulseMems_2symbol_read_5;
  reg [31:0] _zz_pulseMems_2symbol_read_6;
  reg [31:0] _zz_pulseMems_2symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_3_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_3symbol_read;
  reg [31:0] _zz_pulseMems_3symbol_read_1;
  reg [31:0] _zz_pulseMems_3symbol_read_2;
  reg [31:0] _zz_pulseMems_3symbol_read_3;
  reg [31:0] _zz_pulseMems_3symbol_read_4;
  reg [31:0] _zz_pulseMems_3symbol_read_5;
  reg [31:0] _zz_pulseMems_3symbol_read_6;
  reg [31:0] _zz_pulseMems_3symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_4_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_4symbol_read;
  reg [31:0] _zz_pulseMems_4symbol_read_1;
  reg [31:0] _zz_pulseMems_4symbol_read_2;
  reg [31:0] _zz_pulseMems_4symbol_read_3;
  reg [31:0] _zz_pulseMems_4symbol_read_4;
  reg [31:0] _zz_pulseMems_4symbol_read_5;
  reg [31:0] _zz_pulseMems_4symbol_read_6;
  reg [31:0] _zz_pulseMems_4symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_5_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_5symbol_read;
  reg [31:0] _zz_pulseMems_5symbol_read_1;
  reg [31:0] _zz_pulseMems_5symbol_read_2;
  reg [31:0] _zz_pulseMems_5symbol_read_3;
  reg [31:0] _zz_pulseMems_5symbol_read_4;
  reg [31:0] _zz_pulseMems_5symbol_read_5;
  reg [31:0] _zz_pulseMems_5symbol_read_6;
  reg [31:0] _zz_pulseMems_5symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_6_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_6symbol_read;
  reg [31:0] _zz_pulseMems_6symbol_read_1;
  reg [31:0] _zz_pulseMems_6symbol_read_2;
  reg [31:0] _zz_pulseMems_6symbol_read_3;
  reg [31:0] _zz_pulseMems_6symbol_read_4;
  reg [31:0] _zz_pulseMems_6symbol_read_5;
  reg [31:0] _zz_pulseMems_6symbol_read_6;
  reg [31:0] _zz_pulseMems_6symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_7_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_7symbol_read;
  reg [31:0] _zz_pulseMems_7symbol_read_1;
  reg [31:0] _zz_pulseMems_7symbol_read_2;
  reg [31:0] _zz_pulseMems_7symbol_read_3;
  reg [31:0] _zz_pulseMems_7symbol_read_4;
  reg [31:0] _zz_pulseMems_7symbol_read_5;
  reg [31:0] _zz_pulseMems_7symbol_read_6;
  reg [31:0] _zz_pulseMems_7symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_8_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_8symbol_read;
  reg [31:0] _zz_pulseMems_8symbol_read_1;
  reg [31:0] _zz_pulseMems_8symbol_read_2;
  reg [31:0] _zz_pulseMems_8symbol_read_3;
  reg [31:0] _zz_pulseMems_8symbol_read_4;
  reg [31:0] _zz_pulseMems_8symbol_read_5;
  reg [31:0] _zz_pulseMems_8symbol_read_6;
  reg [31:0] _zz_pulseMems_8symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_9_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_9symbol_read;
  reg [31:0] _zz_pulseMems_9symbol_read_1;
  reg [31:0] _zz_pulseMems_9symbol_read_2;
  reg [31:0] _zz_pulseMems_9symbol_read_3;
  reg [31:0] _zz_pulseMems_9symbol_read_4;
  reg [31:0] _zz_pulseMems_9symbol_read_5;
  reg [31:0] _zz_pulseMems_9symbol_read_6;
  reg [31:0] _zz_pulseMems_9symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_10_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_10symbol_read;
  reg [31:0] _zz_pulseMems_10symbol_read_1;
  reg [31:0] _zz_pulseMems_10symbol_read_2;
  reg [31:0] _zz_pulseMems_10symbol_read_3;
  reg [31:0] _zz_pulseMems_10symbol_read_4;
  reg [31:0] _zz_pulseMems_10symbol_read_5;
  reg [31:0] _zz_pulseMems_10symbol_read_6;
  reg [31:0] _zz_pulseMems_10symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_11_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_11symbol_read;
  reg [31:0] _zz_pulseMems_11symbol_read_1;
  reg [31:0] _zz_pulseMems_11symbol_read_2;
  reg [31:0] _zz_pulseMems_11symbol_read_3;
  reg [31:0] _zz_pulseMems_11symbol_read_4;
  reg [31:0] _zz_pulseMems_11symbol_read_5;
  reg [31:0] _zz_pulseMems_11symbol_read_6;
  reg [31:0] _zz_pulseMems_11symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_12_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_12symbol_read;
  reg [31:0] _zz_pulseMems_12symbol_read_1;
  reg [31:0] _zz_pulseMems_12symbol_read_2;
  reg [31:0] _zz_pulseMems_12symbol_read_3;
  reg [31:0] _zz_pulseMems_12symbol_read_4;
  reg [31:0] _zz_pulseMems_12symbol_read_5;
  reg [31:0] _zz_pulseMems_12symbol_read_6;
  reg [31:0] _zz_pulseMems_12symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_13_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_13symbol_read;
  reg [31:0] _zz_pulseMems_13symbol_read_1;
  reg [31:0] _zz_pulseMems_13symbol_read_2;
  reg [31:0] _zz_pulseMems_13symbol_read_3;
  reg [31:0] _zz_pulseMems_13symbol_read_4;
  reg [31:0] _zz_pulseMems_13symbol_read_5;
  reg [31:0] _zz_pulseMems_13symbol_read_6;
  reg [31:0] _zz_pulseMems_13symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_14_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_14symbol_read;
  reg [31:0] _zz_pulseMems_14symbol_read_1;
  reg [31:0] _zz_pulseMems_14symbol_read_2;
  reg [31:0] _zz_pulseMems_14symbol_read_3;
  reg [31:0] _zz_pulseMems_14symbol_read_4;
  reg [31:0] _zz_pulseMems_14symbol_read_5;
  reg [31:0] _zz_pulseMems_14symbol_read_6;
  reg [31:0] _zz_pulseMems_14symbol_read_7;
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol0 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol1 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol2 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol3 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol4 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol5 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol6 [0:1023];
  (* ram_style = "block" *) reg [31:0] pulseMems_15_symbol7 [0:1023];
  reg [31:0] _zz_pulseMems_15symbol_read;
  reg [31:0] _zz_pulseMems_15symbol_read_1;
  reg [31:0] _zz_pulseMems_15symbol_read_2;
  reg [31:0] _zz_pulseMems_15symbol_read_3;
  reg [31:0] _zz_pulseMems_15symbol_read_4;
  reg [31:0] _zz_pulseMems_15symbol_read_5;
  reg [31:0] _zz_pulseMems_15symbol_read_6;
  reg [31:0] _zz_pulseMems_15symbol_read_7;
  (* ram_style = "block" *) reg [63:0] recordMems_0 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_1 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_2 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_3 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_4 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_5 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_6 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_7 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_8 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_9 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_10 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_11 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_12 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_13 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_14 [0:1023];
  (* ram_style = "block" *) reg [63:0] recordMems_15 [0:1023];

  assign _zz_Axi4Incr_alignMask = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_Axi4Incr_baseIncr = {9'd0, Axi4Incr_sizeValue};
  assign _zz_Axi4Incr_wrapCase_2 = {1'd0, Axi4Incr_validSize};
  assign _zz_Axi4Incr_wrapCase_3 = {1'd0, _zz_Axi4Incr_wrapCase};
  assign _zz_Axi4Incr_alignMask_1 = {(2'b01 < Axi4Incr_validSize_1),(2'b00 < Axi4Incr_validSize_1)};
  assign _zz_Axi4Incr_baseIncr_1 = {9'd0, Axi4Incr_sizeValue_1};
  assign _zz_Axi4Incr_wrapCase_1_1 = {1'd0, Axi4Incr_validSize_1};
  assign _zz_Axi4Incr_wrapCase_1_2 = {1'd0, _zz_Axi4Incr_wrapCase_1};
  assign _zz_pulseMems_0_port = (_zz_pulseMems_0_port_1 >>> 3'd5);
  assign _zz_pulseMems_0_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_0_port_1 = _zz_pulseMems_0_port_2[14:0];
  assign _zz__zz_4 = _zz__zz_4_1[14:0];
  assign _zz__zz_4_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_1_port = (_zz_pulseMems_1_port_1 >>> 3'd5);
  assign _zz_pulseMems_1_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_1_port_1 = _zz_pulseMems_1_port_2[14:0];
  assign _zz__zz_9 = _zz__zz_9_1[14:0];
  assign _zz__zz_9_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_3 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_2_port = (_zz_pulseMems_2_port_1 >>> 3'd5);
  assign _zz_pulseMems_2_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_2_port_1 = _zz_pulseMems_2_port_2[14:0];
  assign _zz__zz_14 = _zz__zz_14_1[14:0];
  assign _zz__zz_14_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_6 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_3_port = (_zz_pulseMems_3_port_1 >>> 3'd5);
  assign _zz_pulseMems_3_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_3_port_1 = _zz_pulseMems_3_port_2[14:0];
  assign _zz__zz_19 = _zz__zz_19_1[14:0];
  assign _zz__zz_19_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_9 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_4_port = (_zz_pulseMems_4_port_1 >>> 3'd5);
  assign _zz_pulseMems_4_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_4_port_1 = _zz_pulseMems_4_port_2[14:0];
  assign _zz__zz_24 = _zz__zz_24_1[14:0];
  assign _zz__zz_24_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_12 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_5_port = (_zz_pulseMems_5_port_1 >>> 3'd5);
  assign _zz_pulseMems_5_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_5_port_1 = _zz_pulseMems_5_port_2[14:0];
  assign _zz__zz_29 = _zz__zz_29_1[14:0];
  assign _zz__zz_29_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_15 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_6_port = (_zz_pulseMems_6_port_1 >>> 3'd5);
  assign _zz_pulseMems_6_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_6_port_1 = _zz_pulseMems_6_port_2[14:0];
  assign _zz__zz_34 = _zz__zz_34_1[14:0];
  assign _zz__zz_34_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_18 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_7_port = (_zz_pulseMems_7_port_1 >>> 3'd5);
  assign _zz_pulseMems_7_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_7_port_1 = _zz_pulseMems_7_port_2[14:0];
  assign _zz__zz_39 = _zz__zz_39_1[14:0];
  assign _zz__zz_39_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_21 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_8_port = (_zz_pulseMems_8_port_1 >>> 3'd5);
  assign _zz_pulseMems_8_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_8_port_1 = _zz_pulseMems_8_port_2[14:0];
  assign _zz__zz_44 = _zz__zz_44_1[14:0];
  assign _zz__zz_44_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_24 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_9_port = (_zz_pulseMems_9_port_1 >>> 3'd5);
  assign _zz_pulseMems_9_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_9_port_1 = _zz_pulseMems_9_port_2[14:0];
  assign _zz__zz_49 = _zz__zz_49_1[14:0];
  assign _zz__zz_49_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_27 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_10_port = (_zz_pulseMems_10_port_1 >>> 3'd5);
  assign _zz_pulseMems_10_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_10_port_1 = _zz_pulseMems_10_port_2[14:0];
  assign _zz__zz_54 = _zz__zz_54_1[14:0];
  assign _zz__zz_54_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_30 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_11_port = (_zz_pulseMems_11_port_1 >>> 3'd5);
  assign _zz_pulseMems_11_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_11_port_1 = _zz_pulseMems_11_port_2[14:0];
  assign _zz__zz_59 = _zz__zz_59_1[14:0];
  assign _zz__zz_59_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_33 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_12_port = (_zz_pulseMems_12_port_1 >>> 3'd5);
  assign _zz_pulseMems_12_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_12_port_1 = _zz_pulseMems_12_port_2[14:0];
  assign _zz__zz_64 = _zz__zz_64_1[14:0];
  assign _zz__zz_64_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_36 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_13_port = (_zz_pulseMems_13_port_1 >>> 3'd5);
  assign _zz_pulseMems_13_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_13_port_1 = _zz_pulseMems_13_port_2[14:0];
  assign _zz__zz_69 = _zz__zz_69_1[14:0];
  assign _zz__zz_69_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_39 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_14_port = (_zz_pulseMems_14_port_1 >>> 3'd5);
  assign _zz_pulseMems_14_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_14_port_1 = _zz_pulseMems_14_port_2[14:0];
  assign _zz__zz_74 = _zz__zz_74_1[14:0];
  assign _zz__zz_74_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_42 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_15_port = (_zz_pulseMems_15_port_1 >>> 3'd5);
  assign _zz_pulseMems_15_port_2 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz_pulseMems_15_port_1 = _zz_pulseMems_15_port_2[14:0];
  assign _zz__zz_79 = _zz__zz_79_1[14:0];
  assign _zz__zz_79_1 = (factory_writeAddressMasked & 32'h00007fff);
  assign _zz__zz_factory_readRsp_data_45 = (factory_readAddressMasked & 32'h00001fff);
  assign _zz_pulseMems_0_port_3 = {_zz_3,{_zz_3,{_zz_3,{_zz_3,{_zz_3,{_zz_3,{_zz_3,_zz_3}}}}}}};
  assign _zz_pulseMems_0_port_4 = _zz_4;
  assign _zz_dsp_chans_0_sample = 1'b1;
  assign _zz_pulseMems_1_port_3 = {_zz_8,{_zz_8,{_zz_8,{_zz_8,{_zz_8,{_zz_8,{_zz_8,_zz_8}}}}}}};
  assign _zz_pulseMems_1_port_4 = _zz_9;
  assign _zz_dsp_chans_1_sample = 1'b1;
  assign _zz_pulseMems_2_port_3 = {_zz_13,{_zz_13,{_zz_13,{_zz_13,{_zz_13,{_zz_13,{_zz_13,_zz_13}}}}}}};
  assign _zz_pulseMems_2_port_4 = _zz_14;
  assign _zz_dsp_chans_2_sample = 1'b1;
  assign _zz_pulseMems_3_port_3 = {_zz_18,{_zz_18,{_zz_18,{_zz_18,{_zz_18,{_zz_18,{_zz_18,_zz_18}}}}}}};
  assign _zz_pulseMems_3_port_4 = _zz_19;
  assign _zz_dsp_chans_3_sample = 1'b1;
  assign _zz_pulseMems_4_port_3 = {_zz_23,{_zz_23,{_zz_23,{_zz_23,{_zz_23,{_zz_23,{_zz_23,_zz_23}}}}}}};
  assign _zz_pulseMems_4_port_4 = _zz_24;
  assign _zz_dsp_chans_4_sample = 1'b1;
  assign _zz_pulseMems_5_port_3 = {_zz_28,{_zz_28,{_zz_28,{_zz_28,{_zz_28,{_zz_28,{_zz_28,_zz_28}}}}}}};
  assign _zz_pulseMems_5_port_4 = _zz_29;
  assign _zz_dsp_chans_5_sample = 1'b1;
  assign _zz_pulseMems_6_port_3 = {_zz_33,{_zz_33,{_zz_33,{_zz_33,{_zz_33,{_zz_33,{_zz_33,_zz_33}}}}}}};
  assign _zz_pulseMems_6_port_4 = _zz_34;
  assign _zz_dsp_chans_6_sample = 1'b1;
  assign _zz_pulseMems_7_port_3 = {_zz_38,{_zz_38,{_zz_38,{_zz_38,{_zz_38,{_zz_38,{_zz_38,_zz_38}}}}}}};
  assign _zz_pulseMems_7_port_4 = _zz_39;
  assign _zz_dsp_chans_7_sample = 1'b1;
  assign _zz_pulseMems_8_port_3 = {_zz_43,{_zz_43,{_zz_43,{_zz_43,{_zz_43,{_zz_43,{_zz_43,_zz_43}}}}}}};
  assign _zz_pulseMems_8_port_4 = _zz_44;
  assign _zz_dsp_chans_8_sample = 1'b1;
  assign _zz_pulseMems_9_port_3 = {_zz_48,{_zz_48,{_zz_48,{_zz_48,{_zz_48,{_zz_48,{_zz_48,_zz_48}}}}}}};
  assign _zz_pulseMems_9_port_4 = _zz_49;
  assign _zz_dsp_chans_9_sample = 1'b1;
  assign _zz_pulseMems_10_port_3 = {_zz_53,{_zz_53,{_zz_53,{_zz_53,{_zz_53,{_zz_53,{_zz_53,_zz_53}}}}}}};
  assign _zz_pulseMems_10_port_4 = _zz_54;
  assign _zz_dsp_chans_10_sample = 1'b1;
  assign _zz_pulseMems_11_port_3 = {_zz_58,{_zz_58,{_zz_58,{_zz_58,{_zz_58,{_zz_58,{_zz_58,_zz_58}}}}}}};
  assign _zz_pulseMems_11_port_4 = _zz_59;
  assign _zz_dsp_chans_11_sample = 1'b1;
  assign _zz_pulseMems_12_port_3 = {_zz_63,{_zz_63,{_zz_63,{_zz_63,{_zz_63,{_zz_63,{_zz_63,_zz_63}}}}}}};
  assign _zz_pulseMems_12_port_4 = _zz_64;
  assign _zz_dsp_chans_12_sample = 1'b1;
  assign _zz_pulseMems_13_port_3 = {_zz_68,{_zz_68,{_zz_68,{_zz_68,{_zz_68,{_zz_68,{_zz_68,_zz_68}}}}}}};
  assign _zz_pulseMems_13_port_4 = _zz_69;
  assign _zz_dsp_chans_13_sample = 1'b1;
  assign _zz_pulseMems_14_port_3 = {_zz_73,{_zz_73,{_zz_73,{_zz_73,{_zz_73,{_zz_73,{_zz_73,_zz_73}}}}}}};
  assign _zz_pulseMems_14_port_4 = _zz_74;
  assign _zz_dsp_chans_14_sample = 1'b1;
  assign _zz_pulseMems_15_port_3 = {_zz_78,{_zz_78,{_zz_78,{_zz_78,{_zz_78,{_zz_78,{_zz_78,_zz_78}}}}}}};
  assign _zz_pulseMems_15_port_4 = _zz_79;
  assign _zz_dsp_chans_15_sample = 1'b1;
  assign _zz__zz_factory_readRsp_data_2 = 1'b1;
  assign _zz__zz_factory_readRsp_data_5 = 1'b1;
  assign _zz__zz_factory_readRsp_data_8 = 1'b1;
  assign _zz__zz_factory_readRsp_data_11 = 1'b1;
  assign _zz__zz_factory_readRsp_data_14 = 1'b1;
  assign _zz__zz_factory_readRsp_data_17 = 1'b1;
  assign _zz__zz_factory_readRsp_data_20 = 1'b1;
  assign _zz__zz_factory_readRsp_data_23 = 1'b1;
  assign _zz__zz_factory_readRsp_data_26 = 1'b1;
  assign _zz__zz_factory_readRsp_data_29 = 1'b1;
  assign _zz__zz_factory_readRsp_data_32 = 1'b1;
  assign _zz__zz_factory_readRsp_data_35 = 1'b1;
  assign _zz__zz_factory_readRsp_data_38 = 1'b1;
  assign _zz__zz_factory_readRsp_data_41 = 1'b1;
  assign _zz__zz_factory_readRsp_data_44 = 1'b1;
  assign _zz__zz_factory_readRsp_data_47 = 1'b1;
  assign _zz_factory_readRsp_data_49 = _zz_factory_readRsp_data[2];
  assign _zz_factory_readRsp_data_51 = _zz_factory_readRsp_data_3[2];
  assign _zz_factory_readRsp_data_53 = _zz_factory_readRsp_data_6[2];
  assign _zz_factory_readRsp_data_55 = _zz_factory_readRsp_data_9[2];
  assign _zz_factory_readRsp_data_57 = _zz_factory_readRsp_data_12[2];
  assign _zz_factory_readRsp_data_59 = _zz_factory_readRsp_data_15[2];
  assign _zz_factory_readRsp_data_61 = _zz_factory_readRsp_data_18[2];
  assign _zz_factory_readRsp_data_63 = _zz_factory_readRsp_data_21[2];
  assign _zz_factory_readRsp_data_65 = _zz_factory_readRsp_data_24[2];
  assign _zz_factory_readRsp_data_67 = _zz_factory_readRsp_data_27[2];
  assign _zz_factory_readRsp_data_69 = _zz_factory_readRsp_data_30[2];
  assign _zz_factory_readRsp_data_71 = _zz_factory_readRsp_data_33[2];
  assign _zz_factory_readRsp_data_73 = _zz_factory_readRsp_data_36[2];
  assign _zz_factory_readRsp_data_75 = _zz_factory_readRsp_data_39[2];
  assign _zz_factory_readRsp_data_77 = _zz_factory_readRsp_data_42[2];
  assign _zz_factory_readRsp_data_79 = _zz_factory_readRsp_data_45[2];
  assign _zz_Axi4Incr_result_1 = Axi4Incr_base[11 : 1];
  assign _zz_Axi4Incr_result_2 = Axi4Incr_baseIncr[0 : 0];
  assign _zz_Axi4Incr_result_3 = Axi4Incr_base[11 : 2];
  assign _zz_Axi4Incr_result_4 = Axi4Incr_baseIncr[1 : 0];
  assign _zz_Axi4Incr_result_5 = Axi4Incr_base[11 : 3];
  assign _zz_Axi4Incr_result_6 = Axi4Incr_baseIncr[2 : 0];
  assign _zz_Axi4Incr_result_7 = Axi4Incr_base[11 : 4];
  assign _zz_Axi4Incr_result_8 = Axi4Incr_baseIncr[3 : 0];
  assign _zz_Axi4Incr_result_9 = Axi4Incr_base[11 : 5];
  assign _zz_Axi4Incr_result_10 = Axi4Incr_baseIncr[4 : 0];
  assign _zz_Axi4Incr_result_11 = Axi4Incr_base[11 : 6];
  assign _zz_Axi4Incr_result_12 = Axi4Incr_baseIncr[5 : 0];
  assign _zz_Axi4Incr_result_1_2 = Axi4Incr_base_1[11 : 1];
  assign _zz_Axi4Incr_result_1_3 = Axi4Incr_baseIncr_1[0 : 0];
  assign _zz_Axi4Incr_result_1_4 = Axi4Incr_base_1[11 : 2];
  assign _zz_Axi4Incr_result_1_5 = Axi4Incr_baseIncr_1[1 : 0];
  assign _zz_Axi4Incr_result_1_6 = Axi4Incr_base_1[11 : 3];
  assign _zz_Axi4Incr_result_1_7 = Axi4Incr_baseIncr_1[2 : 0];
  assign _zz_Axi4Incr_result_1_8 = Axi4Incr_base_1[11 : 4];
  assign _zz_Axi4Incr_result_1_9 = Axi4Incr_baseIncr_1[3 : 0];
  assign _zz_Axi4Incr_result_1_10 = Axi4Incr_base_1[11 : 5];
  assign _zz_Axi4Incr_result_1_11 = Axi4Incr_baseIncr_1[4 : 0];
  assign _zz_Axi4Incr_result_1_12 = Axi4Incr_base_1[11 : 6];
  assign _zz_Axi4Incr_result_1_13 = Axi4Incr_baseIncr_1[5 : 0];
  assign _zz_dsp_anyStart = starts_5_ccToggle_io_output_valid;
  assign _zz_dsp_anyStart_1 = {starts_4_ccToggle_io_output_valid,{starts_3_ccToggle_io_output_valid,{starts_2_ccToggle_io_output_valid,{starts_1_ccToggle_io_output_valid,starts_0_ccToggle_io_output_valid}}}};
  assign _zz_dsp_anyFire = dsp_chans_5_fire;
  assign _zz_dsp_anyFire_1 = {dsp_chans_4_fire,{dsp_chans_3_fire,{dsp_chans_2_fire,{dsp_chans_1_fire,dsp_chans_0_fire}}}};
  assign _zz_io_dataIn = dsp_chans_5_fire;
  assign _zz_io_dataIn_1 = {dsp_chans_4_fire,{dsp_chans_3_fire,{dsp_chans_2_fire,{dsp_chans_1_fire,dsp_chans_0_fire}}}};
  always @(*) begin
    pulseMems_0_spinal_port1 = {_zz_pulseMems_0symbol_read_7, _zz_pulseMems_0symbol_read_6, _zz_pulseMems_0symbol_read_5, _zz_pulseMems_0symbol_read_4, _zz_pulseMems_0symbol_read_3, _zz_pulseMems_0symbol_read_2, _zz_pulseMems_0symbol_read_1, _zz_pulseMems_0symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_0_port_4[0] && _zz_1) begin
      pulseMems_0_symbol0[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[31 : 0];
    end
    if(_zz_pulseMems_0_port_4[1] && _zz_1) begin
      pulseMems_0_symbol1[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[63 : 32];
    end
    if(_zz_pulseMems_0_port_4[2] && _zz_1) begin
      pulseMems_0_symbol2[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[95 : 64];
    end
    if(_zz_pulseMems_0_port_4[3] && _zz_1) begin
      pulseMems_0_symbol3[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[127 : 96];
    end
    if(_zz_pulseMems_0_port_4[4] && _zz_1) begin
      pulseMems_0_symbol4[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[159 : 128];
    end
    if(_zz_pulseMems_0_port_4[5] && _zz_1) begin
      pulseMems_0_symbol5[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[191 : 160];
    end
    if(_zz_pulseMems_0_port_4[6] && _zz_1) begin
      pulseMems_0_symbol6[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[223 : 192];
    end
    if(_zz_pulseMems_0_port_4[7] && _zz_1) begin
      pulseMems_0_symbol7[_zz_pulseMems_0_port] <= _zz_pulseMems_0_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_0_sample) begin
      _zz_pulseMems_0symbol_read <= pulseMems_0_symbol0[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_1 <= pulseMems_0_symbol1[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_2 <= pulseMems_0_symbol2[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_3 <= pulseMems_0_symbol3[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_4 <= pulseMems_0_symbol4[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_5 <= pulseMems_0_symbol5[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_6 <= pulseMems_0_symbol6[dsp_chans_0_addr];
      _zz_pulseMems_0symbol_read_7 <= pulseMems_0_symbol7[dsp_chans_0_addr];
    end
  end

  always @(*) begin
    pulseMems_1_spinal_port1 = {_zz_pulseMems_1symbol_read_7, _zz_pulseMems_1symbol_read_6, _zz_pulseMems_1symbol_read_5, _zz_pulseMems_1symbol_read_4, _zz_pulseMems_1symbol_read_3, _zz_pulseMems_1symbol_read_2, _zz_pulseMems_1symbol_read_1, _zz_pulseMems_1symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_1_port_4[0] && _zz_6) begin
      pulseMems_1_symbol0[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[31 : 0];
    end
    if(_zz_pulseMems_1_port_4[1] && _zz_6) begin
      pulseMems_1_symbol1[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[63 : 32];
    end
    if(_zz_pulseMems_1_port_4[2] && _zz_6) begin
      pulseMems_1_symbol2[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[95 : 64];
    end
    if(_zz_pulseMems_1_port_4[3] && _zz_6) begin
      pulseMems_1_symbol3[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[127 : 96];
    end
    if(_zz_pulseMems_1_port_4[4] && _zz_6) begin
      pulseMems_1_symbol4[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[159 : 128];
    end
    if(_zz_pulseMems_1_port_4[5] && _zz_6) begin
      pulseMems_1_symbol5[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[191 : 160];
    end
    if(_zz_pulseMems_1_port_4[6] && _zz_6) begin
      pulseMems_1_symbol6[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[223 : 192];
    end
    if(_zz_pulseMems_1_port_4[7] && _zz_6) begin
      pulseMems_1_symbol7[_zz_pulseMems_1_port] <= _zz_pulseMems_1_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_1_sample) begin
      _zz_pulseMems_1symbol_read <= pulseMems_1_symbol0[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_1 <= pulseMems_1_symbol1[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_2 <= pulseMems_1_symbol2[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_3 <= pulseMems_1_symbol3[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_4 <= pulseMems_1_symbol4[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_5 <= pulseMems_1_symbol5[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_6 <= pulseMems_1_symbol6[dsp_chans_1_addr];
      _zz_pulseMems_1symbol_read_7 <= pulseMems_1_symbol7[dsp_chans_1_addr];
    end
  end

  always @(*) begin
    pulseMems_2_spinal_port1 = {_zz_pulseMems_2symbol_read_7, _zz_pulseMems_2symbol_read_6, _zz_pulseMems_2symbol_read_5, _zz_pulseMems_2symbol_read_4, _zz_pulseMems_2symbol_read_3, _zz_pulseMems_2symbol_read_2, _zz_pulseMems_2symbol_read_1, _zz_pulseMems_2symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_2_port_4[0] && _zz_11) begin
      pulseMems_2_symbol0[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[31 : 0];
    end
    if(_zz_pulseMems_2_port_4[1] && _zz_11) begin
      pulseMems_2_symbol1[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[63 : 32];
    end
    if(_zz_pulseMems_2_port_4[2] && _zz_11) begin
      pulseMems_2_symbol2[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[95 : 64];
    end
    if(_zz_pulseMems_2_port_4[3] && _zz_11) begin
      pulseMems_2_symbol3[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[127 : 96];
    end
    if(_zz_pulseMems_2_port_4[4] && _zz_11) begin
      pulseMems_2_symbol4[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[159 : 128];
    end
    if(_zz_pulseMems_2_port_4[5] && _zz_11) begin
      pulseMems_2_symbol5[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[191 : 160];
    end
    if(_zz_pulseMems_2_port_4[6] && _zz_11) begin
      pulseMems_2_symbol6[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[223 : 192];
    end
    if(_zz_pulseMems_2_port_4[7] && _zz_11) begin
      pulseMems_2_symbol7[_zz_pulseMems_2_port] <= _zz_pulseMems_2_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_2_sample) begin
      _zz_pulseMems_2symbol_read <= pulseMems_2_symbol0[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_1 <= pulseMems_2_symbol1[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_2 <= pulseMems_2_symbol2[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_3 <= pulseMems_2_symbol3[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_4 <= pulseMems_2_symbol4[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_5 <= pulseMems_2_symbol5[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_6 <= pulseMems_2_symbol6[dsp_chans_2_addr];
      _zz_pulseMems_2symbol_read_7 <= pulseMems_2_symbol7[dsp_chans_2_addr];
    end
  end

  always @(*) begin
    pulseMems_3_spinal_port1 = {_zz_pulseMems_3symbol_read_7, _zz_pulseMems_3symbol_read_6, _zz_pulseMems_3symbol_read_5, _zz_pulseMems_3symbol_read_4, _zz_pulseMems_3symbol_read_3, _zz_pulseMems_3symbol_read_2, _zz_pulseMems_3symbol_read_1, _zz_pulseMems_3symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_3_port_4[0] && _zz_16) begin
      pulseMems_3_symbol0[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[31 : 0];
    end
    if(_zz_pulseMems_3_port_4[1] && _zz_16) begin
      pulseMems_3_symbol1[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[63 : 32];
    end
    if(_zz_pulseMems_3_port_4[2] && _zz_16) begin
      pulseMems_3_symbol2[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[95 : 64];
    end
    if(_zz_pulseMems_3_port_4[3] && _zz_16) begin
      pulseMems_3_symbol3[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[127 : 96];
    end
    if(_zz_pulseMems_3_port_4[4] && _zz_16) begin
      pulseMems_3_symbol4[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[159 : 128];
    end
    if(_zz_pulseMems_3_port_4[5] && _zz_16) begin
      pulseMems_3_symbol5[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[191 : 160];
    end
    if(_zz_pulseMems_3_port_4[6] && _zz_16) begin
      pulseMems_3_symbol6[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[223 : 192];
    end
    if(_zz_pulseMems_3_port_4[7] && _zz_16) begin
      pulseMems_3_symbol7[_zz_pulseMems_3_port] <= _zz_pulseMems_3_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_3_sample) begin
      _zz_pulseMems_3symbol_read <= pulseMems_3_symbol0[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_1 <= pulseMems_3_symbol1[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_2 <= pulseMems_3_symbol2[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_3 <= pulseMems_3_symbol3[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_4 <= pulseMems_3_symbol4[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_5 <= pulseMems_3_symbol5[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_6 <= pulseMems_3_symbol6[dsp_chans_3_addr];
      _zz_pulseMems_3symbol_read_7 <= pulseMems_3_symbol7[dsp_chans_3_addr];
    end
  end

  always @(*) begin
    pulseMems_4_spinal_port1 = {_zz_pulseMems_4symbol_read_7, _zz_pulseMems_4symbol_read_6, _zz_pulseMems_4symbol_read_5, _zz_pulseMems_4symbol_read_4, _zz_pulseMems_4symbol_read_3, _zz_pulseMems_4symbol_read_2, _zz_pulseMems_4symbol_read_1, _zz_pulseMems_4symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_4_port_4[0] && _zz_21) begin
      pulseMems_4_symbol0[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[31 : 0];
    end
    if(_zz_pulseMems_4_port_4[1] && _zz_21) begin
      pulseMems_4_symbol1[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[63 : 32];
    end
    if(_zz_pulseMems_4_port_4[2] && _zz_21) begin
      pulseMems_4_symbol2[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[95 : 64];
    end
    if(_zz_pulseMems_4_port_4[3] && _zz_21) begin
      pulseMems_4_symbol3[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[127 : 96];
    end
    if(_zz_pulseMems_4_port_4[4] && _zz_21) begin
      pulseMems_4_symbol4[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[159 : 128];
    end
    if(_zz_pulseMems_4_port_4[5] && _zz_21) begin
      pulseMems_4_symbol5[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[191 : 160];
    end
    if(_zz_pulseMems_4_port_4[6] && _zz_21) begin
      pulseMems_4_symbol6[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[223 : 192];
    end
    if(_zz_pulseMems_4_port_4[7] && _zz_21) begin
      pulseMems_4_symbol7[_zz_pulseMems_4_port] <= _zz_pulseMems_4_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_4_sample) begin
      _zz_pulseMems_4symbol_read <= pulseMems_4_symbol0[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_1 <= pulseMems_4_symbol1[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_2 <= pulseMems_4_symbol2[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_3 <= pulseMems_4_symbol3[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_4 <= pulseMems_4_symbol4[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_5 <= pulseMems_4_symbol5[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_6 <= pulseMems_4_symbol6[dsp_chans_4_addr];
      _zz_pulseMems_4symbol_read_7 <= pulseMems_4_symbol7[dsp_chans_4_addr];
    end
  end

  always @(*) begin
    pulseMems_5_spinal_port1 = {_zz_pulseMems_5symbol_read_7, _zz_pulseMems_5symbol_read_6, _zz_pulseMems_5symbol_read_5, _zz_pulseMems_5symbol_read_4, _zz_pulseMems_5symbol_read_3, _zz_pulseMems_5symbol_read_2, _zz_pulseMems_5symbol_read_1, _zz_pulseMems_5symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_5_port_4[0] && _zz_26) begin
      pulseMems_5_symbol0[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[31 : 0];
    end
    if(_zz_pulseMems_5_port_4[1] && _zz_26) begin
      pulseMems_5_symbol1[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[63 : 32];
    end
    if(_zz_pulseMems_5_port_4[2] && _zz_26) begin
      pulseMems_5_symbol2[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[95 : 64];
    end
    if(_zz_pulseMems_5_port_4[3] && _zz_26) begin
      pulseMems_5_symbol3[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[127 : 96];
    end
    if(_zz_pulseMems_5_port_4[4] && _zz_26) begin
      pulseMems_5_symbol4[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[159 : 128];
    end
    if(_zz_pulseMems_5_port_4[5] && _zz_26) begin
      pulseMems_5_symbol5[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[191 : 160];
    end
    if(_zz_pulseMems_5_port_4[6] && _zz_26) begin
      pulseMems_5_symbol6[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[223 : 192];
    end
    if(_zz_pulseMems_5_port_4[7] && _zz_26) begin
      pulseMems_5_symbol7[_zz_pulseMems_5_port] <= _zz_pulseMems_5_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_5_sample) begin
      _zz_pulseMems_5symbol_read <= pulseMems_5_symbol0[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_1 <= pulseMems_5_symbol1[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_2 <= pulseMems_5_symbol2[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_3 <= pulseMems_5_symbol3[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_4 <= pulseMems_5_symbol4[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_5 <= pulseMems_5_symbol5[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_6 <= pulseMems_5_symbol6[dsp_chans_5_addr];
      _zz_pulseMems_5symbol_read_7 <= pulseMems_5_symbol7[dsp_chans_5_addr];
    end
  end

  always @(*) begin
    pulseMems_6_spinal_port1 = {_zz_pulseMems_6symbol_read_7, _zz_pulseMems_6symbol_read_6, _zz_pulseMems_6symbol_read_5, _zz_pulseMems_6symbol_read_4, _zz_pulseMems_6symbol_read_3, _zz_pulseMems_6symbol_read_2, _zz_pulseMems_6symbol_read_1, _zz_pulseMems_6symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_6_port_4[0] && _zz_31) begin
      pulseMems_6_symbol0[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[31 : 0];
    end
    if(_zz_pulseMems_6_port_4[1] && _zz_31) begin
      pulseMems_6_symbol1[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[63 : 32];
    end
    if(_zz_pulseMems_6_port_4[2] && _zz_31) begin
      pulseMems_6_symbol2[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[95 : 64];
    end
    if(_zz_pulseMems_6_port_4[3] && _zz_31) begin
      pulseMems_6_symbol3[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[127 : 96];
    end
    if(_zz_pulseMems_6_port_4[4] && _zz_31) begin
      pulseMems_6_symbol4[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[159 : 128];
    end
    if(_zz_pulseMems_6_port_4[5] && _zz_31) begin
      pulseMems_6_symbol5[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[191 : 160];
    end
    if(_zz_pulseMems_6_port_4[6] && _zz_31) begin
      pulseMems_6_symbol6[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[223 : 192];
    end
    if(_zz_pulseMems_6_port_4[7] && _zz_31) begin
      pulseMems_6_symbol7[_zz_pulseMems_6_port] <= _zz_pulseMems_6_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_6_sample) begin
      _zz_pulseMems_6symbol_read <= pulseMems_6_symbol0[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_1 <= pulseMems_6_symbol1[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_2 <= pulseMems_6_symbol2[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_3 <= pulseMems_6_symbol3[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_4 <= pulseMems_6_symbol4[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_5 <= pulseMems_6_symbol5[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_6 <= pulseMems_6_symbol6[dsp_chans_6_addr];
      _zz_pulseMems_6symbol_read_7 <= pulseMems_6_symbol7[dsp_chans_6_addr];
    end
  end

  always @(*) begin
    pulseMems_7_spinal_port1 = {_zz_pulseMems_7symbol_read_7, _zz_pulseMems_7symbol_read_6, _zz_pulseMems_7symbol_read_5, _zz_pulseMems_7symbol_read_4, _zz_pulseMems_7symbol_read_3, _zz_pulseMems_7symbol_read_2, _zz_pulseMems_7symbol_read_1, _zz_pulseMems_7symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_7_port_4[0] && _zz_36) begin
      pulseMems_7_symbol0[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[31 : 0];
    end
    if(_zz_pulseMems_7_port_4[1] && _zz_36) begin
      pulseMems_7_symbol1[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[63 : 32];
    end
    if(_zz_pulseMems_7_port_4[2] && _zz_36) begin
      pulseMems_7_symbol2[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[95 : 64];
    end
    if(_zz_pulseMems_7_port_4[3] && _zz_36) begin
      pulseMems_7_symbol3[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[127 : 96];
    end
    if(_zz_pulseMems_7_port_4[4] && _zz_36) begin
      pulseMems_7_symbol4[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[159 : 128];
    end
    if(_zz_pulseMems_7_port_4[5] && _zz_36) begin
      pulseMems_7_symbol5[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[191 : 160];
    end
    if(_zz_pulseMems_7_port_4[6] && _zz_36) begin
      pulseMems_7_symbol6[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[223 : 192];
    end
    if(_zz_pulseMems_7_port_4[7] && _zz_36) begin
      pulseMems_7_symbol7[_zz_pulseMems_7_port] <= _zz_pulseMems_7_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_7_sample) begin
      _zz_pulseMems_7symbol_read <= pulseMems_7_symbol0[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_1 <= pulseMems_7_symbol1[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_2 <= pulseMems_7_symbol2[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_3 <= pulseMems_7_symbol3[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_4 <= pulseMems_7_symbol4[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_5 <= pulseMems_7_symbol5[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_6 <= pulseMems_7_symbol6[dsp_chans_7_addr];
      _zz_pulseMems_7symbol_read_7 <= pulseMems_7_symbol7[dsp_chans_7_addr];
    end
  end

  always @(*) begin
    pulseMems_8_spinal_port1 = {_zz_pulseMems_8symbol_read_7, _zz_pulseMems_8symbol_read_6, _zz_pulseMems_8symbol_read_5, _zz_pulseMems_8symbol_read_4, _zz_pulseMems_8symbol_read_3, _zz_pulseMems_8symbol_read_2, _zz_pulseMems_8symbol_read_1, _zz_pulseMems_8symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_8_port_4[0] && _zz_41) begin
      pulseMems_8_symbol0[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[31 : 0];
    end
    if(_zz_pulseMems_8_port_4[1] && _zz_41) begin
      pulseMems_8_symbol1[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[63 : 32];
    end
    if(_zz_pulseMems_8_port_4[2] && _zz_41) begin
      pulseMems_8_symbol2[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[95 : 64];
    end
    if(_zz_pulseMems_8_port_4[3] && _zz_41) begin
      pulseMems_8_symbol3[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[127 : 96];
    end
    if(_zz_pulseMems_8_port_4[4] && _zz_41) begin
      pulseMems_8_symbol4[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[159 : 128];
    end
    if(_zz_pulseMems_8_port_4[5] && _zz_41) begin
      pulseMems_8_symbol5[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[191 : 160];
    end
    if(_zz_pulseMems_8_port_4[6] && _zz_41) begin
      pulseMems_8_symbol6[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[223 : 192];
    end
    if(_zz_pulseMems_8_port_4[7] && _zz_41) begin
      pulseMems_8_symbol7[_zz_pulseMems_8_port] <= _zz_pulseMems_8_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_8_sample) begin
      _zz_pulseMems_8symbol_read <= pulseMems_8_symbol0[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_1 <= pulseMems_8_symbol1[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_2 <= pulseMems_8_symbol2[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_3 <= pulseMems_8_symbol3[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_4 <= pulseMems_8_symbol4[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_5 <= pulseMems_8_symbol5[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_6 <= pulseMems_8_symbol6[dsp_chans_8_addr];
      _zz_pulseMems_8symbol_read_7 <= pulseMems_8_symbol7[dsp_chans_8_addr];
    end
  end

  always @(*) begin
    pulseMems_9_spinal_port1 = {_zz_pulseMems_9symbol_read_7, _zz_pulseMems_9symbol_read_6, _zz_pulseMems_9symbol_read_5, _zz_pulseMems_9symbol_read_4, _zz_pulseMems_9symbol_read_3, _zz_pulseMems_9symbol_read_2, _zz_pulseMems_9symbol_read_1, _zz_pulseMems_9symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_9_port_4[0] && _zz_46) begin
      pulseMems_9_symbol0[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[31 : 0];
    end
    if(_zz_pulseMems_9_port_4[1] && _zz_46) begin
      pulseMems_9_symbol1[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[63 : 32];
    end
    if(_zz_pulseMems_9_port_4[2] && _zz_46) begin
      pulseMems_9_symbol2[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[95 : 64];
    end
    if(_zz_pulseMems_9_port_4[3] && _zz_46) begin
      pulseMems_9_symbol3[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[127 : 96];
    end
    if(_zz_pulseMems_9_port_4[4] && _zz_46) begin
      pulseMems_9_symbol4[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[159 : 128];
    end
    if(_zz_pulseMems_9_port_4[5] && _zz_46) begin
      pulseMems_9_symbol5[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[191 : 160];
    end
    if(_zz_pulseMems_9_port_4[6] && _zz_46) begin
      pulseMems_9_symbol6[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[223 : 192];
    end
    if(_zz_pulseMems_9_port_4[7] && _zz_46) begin
      pulseMems_9_symbol7[_zz_pulseMems_9_port] <= _zz_pulseMems_9_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_9_sample) begin
      _zz_pulseMems_9symbol_read <= pulseMems_9_symbol0[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_1 <= pulseMems_9_symbol1[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_2 <= pulseMems_9_symbol2[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_3 <= pulseMems_9_symbol3[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_4 <= pulseMems_9_symbol4[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_5 <= pulseMems_9_symbol5[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_6 <= pulseMems_9_symbol6[dsp_chans_9_addr];
      _zz_pulseMems_9symbol_read_7 <= pulseMems_9_symbol7[dsp_chans_9_addr];
    end
  end

  always @(*) begin
    pulseMems_10_spinal_port1 = {_zz_pulseMems_10symbol_read_7, _zz_pulseMems_10symbol_read_6, _zz_pulseMems_10symbol_read_5, _zz_pulseMems_10symbol_read_4, _zz_pulseMems_10symbol_read_3, _zz_pulseMems_10symbol_read_2, _zz_pulseMems_10symbol_read_1, _zz_pulseMems_10symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_10_port_4[0] && _zz_51) begin
      pulseMems_10_symbol0[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[31 : 0];
    end
    if(_zz_pulseMems_10_port_4[1] && _zz_51) begin
      pulseMems_10_symbol1[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[63 : 32];
    end
    if(_zz_pulseMems_10_port_4[2] && _zz_51) begin
      pulseMems_10_symbol2[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[95 : 64];
    end
    if(_zz_pulseMems_10_port_4[3] && _zz_51) begin
      pulseMems_10_symbol3[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[127 : 96];
    end
    if(_zz_pulseMems_10_port_4[4] && _zz_51) begin
      pulseMems_10_symbol4[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[159 : 128];
    end
    if(_zz_pulseMems_10_port_4[5] && _zz_51) begin
      pulseMems_10_symbol5[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[191 : 160];
    end
    if(_zz_pulseMems_10_port_4[6] && _zz_51) begin
      pulseMems_10_symbol6[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[223 : 192];
    end
    if(_zz_pulseMems_10_port_4[7] && _zz_51) begin
      pulseMems_10_symbol7[_zz_pulseMems_10_port] <= _zz_pulseMems_10_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_10_sample) begin
      _zz_pulseMems_10symbol_read <= pulseMems_10_symbol0[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_1 <= pulseMems_10_symbol1[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_2 <= pulseMems_10_symbol2[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_3 <= pulseMems_10_symbol3[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_4 <= pulseMems_10_symbol4[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_5 <= pulseMems_10_symbol5[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_6 <= pulseMems_10_symbol6[dsp_chans_10_addr];
      _zz_pulseMems_10symbol_read_7 <= pulseMems_10_symbol7[dsp_chans_10_addr];
    end
  end

  always @(*) begin
    pulseMems_11_spinal_port1 = {_zz_pulseMems_11symbol_read_7, _zz_pulseMems_11symbol_read_6, _zz_pulseMems_11symbol_read_5, _zz_pulseMems_11symbol_read_4, _zz_pulseMems_11symbol_read_3, _zz_pulseMems_11symbol_read_2, _zz_pulseMems_11symbol_read_1, _zz_pulseMems_11symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_11_port_4[0] && _zz_56) begin
      pulseMems_11_symbol0[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[31 : 0];
    end
    if(_zz_pulseMems_11_port_4[1] && _zz_56) begin
      pulseMems_11_symbol1[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[63 : 32];
    end
    if(_zz_pulseMems_11_port_4[2] && _zz_56) begin
      pulseMems_11_symbol2[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[95 : 64];
    end
    if(_zz_pulseMems_11_port_4[3] && _zz_56) begin
      pulseMems_11_symbol3[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[127 : 96];
    end
    if(_zz_pulseMems_11_port_4[4] && _zz_56) begin
      pulseMems_11_symbol4[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[159 : 128];
    end
    if(_zz_pulseMems_11_port_4[5] && _zz_56) begin
      pulseMems_11_symbol5[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[191 : 160];
    end
    if(_zz_pulseMems_11_port_4[6] && _zz_56) begin
      pulseMems_11_symbol6[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[223 : 192];
    end
    if(_zz_pulseMems_11_port_4[7] && _zz_56) begin
      pulseMems_11_symbol7[_zz_pulseMems_11_port] <= _zz_pulseMems_11_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_11_sample) begin
      _zz_pulseMems_11symbol_read <= pulseMems_11_symbol0[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_1 <= pulseMems_11_symbol1[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_2 <= pulseMems_11_symbol2[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_3 <= pulseMems_11_symbol3[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_4 <= pulseMems_11_symbol4[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_5 <= pulseMems_11_symbol5[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_6 <= pulseMems_11_symbol6[dsp_chans_11_addr];
      _zz_pulseMems_11symbol_read_7 <= pulseMems_11_symbol7[dsp_chans_11_addr];
    end
  end

  always @(*) begin
    pulseMems_12_spinal_port1 = {_zz_pulseMems_12symbol_read_7, _zz_pulseMems_12symbol_read_6, _zz_pulseMems_12symbol_read_5, _zz_pulseMems_12symbol_read_4, _zz_pulseMems_12symbol_read_3, _zz_pulseMems_12symbol_read_2, _zz_pulseMems_12symbol_read_1, _zz_pulseMems_12symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_12_port_4[0] && _zz_61) begin
      pulseMems_12_symbol0[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[31 : 0];
    end
    if(_zz_pulseMems_12_port_4[1] && _zz_61) begin
      pulseMems_12_symbol1[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[63 : 32];
    end
    if(_zz_pulseMems_12_port_4[2] && _zz_61) begin
      pulseMems_12_symbol2[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[95 : 64];
    end
    if(_zz_pulseMems_12_port_4[3] && _zz_61) begin
      pulseMems_12_symbol3[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[127 : 96];
    end
    if(_zz_pulseMems_12_port_4[4] && _zz_61) begin
      pulseMems_12_symbol4[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[159 : 128];
    end
    if(_zz_pulseMems_12_port_4[5] && _zz_61) begin
      pulseMems_12_symbol5[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[191 : 160];
    end
    if(_zz_pulseMems_12_port_4[6] && _zz_61) begin
      pulseMems_12_symbol6[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[223 : 192];
    end
    if(_zz_pulseMems_12_port_4[7] && _zz_61) begin
      pulseMems_12_symbol7[_zz_pulseMems_12_port] <= _zz_pulseMems_12_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_12_sample) begin
      _zz_pulseMems_12symbol_read <= pulseMems_12_symbol0[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_1 <= pulseMems_12_symbol1[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_2 <= pulseMems_12_symbol2[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_3 <= pulseMems_12_symbol3[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_4 <= pulseMems_12_symbol4[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_5 <= pulseMems_12_symbol5[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_6 <= pulseMems_12_symbol6[dsp_chans_12_addr];
      _zz_pulseMems_12symbol_read_7 <= pulseMems_12_symbol7[dsp_chans_12_addr];
    end
  end

  always @(*) begin
    pulseMems_13_spinal_port1 = {_zz_pulseMems_13symbol_read_7, _zz_pulseMems_13symbol_read_6, _zz_pulseMems_13symbol_read_5, _zz_pulseMems_13symbol_read_4, _zz_pulseMems_13symbol_read_3, _zz_pulseMems_13symbol_read_2, _zz_pulseMems_13symbol_read_1, _zz_pulseMems_13symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_13_port_4[0] && _zz_66) begin
      pulseMems_13_symbol0[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[31 : 0];
    end
    if(_zz_pulseMems_13_port_4[1] && _zz_66) begin
      pulseMems_13_symbol1[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[63 : 32];
    end
    if(_zz_pulseMems_13_port_4[2] && _zz_66) begin
      pulseMems_13_symbol2[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[95 : 64];
    end
    if(_zz_pulseMems_13_port_4[3] && _zz_66) begin
      pulseMems_13_symbol3[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[127 : 96];
    end
    if(_zz_pulseMems_13_port_4[4] && _zz_66) begin
      pulseMems_13_symbol4[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[159 : 128];
    end
    if(_zz_pulseMems_13_port_4[5] && _zz_66) begin
      pulseMems_13_symbol5[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[191 : 160];
    end
    if(_zz_pulseMems_13_port_4[6] && _zz_66) begin
      pulseMems_13_symbol6[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[223 : 192];
    end
    if(_zz_pulseMems_13_port_4[7] && _zz_66) begin
      pulseMems_13_symbol7[_zz_pulseMems_13_port] <= _zz_pulseMems_13_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_13_sample) begin
      _zz_pulseMems_13symbol_read <= pulseMems_13_symbol0[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_1 <= pulseMems_13_symbol1[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_2 <= pulseMems_13_symbol2[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_3 <= pulseMems_13_symbol3[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_4 <= pulseMems_13_symbol4[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_5 <= pulseMems_13_symbol5[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_6 <= pulseMems_13_symbol6[dsp_chans_13_addr];
      _zz_pulseMems_13symbol_read_7 <= pulseMems_13_symbol7[dsp_chans_13_addr];
    end
  end

  always @(*) begin
    pulseMems_14_spinal_port1 = {_zz_pulseMems_14symbol_read_7, _zz_pulseMems_14symbol_read_6, _zz_pulseMems_14symbol_read_5, _zz_pulseMems_14symbol_read_4, _zz_pulseMems_14symbol_read_3, _zz_pulseMems_14symbol_read_2, _zz_pulseMems_14symbol_read_1, _zz_pulseMems_14symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_14_port_4[0] && _zz_71) begin
      pulseMems_14_symbol0[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[31 : 0];
    end
    if(_zz_pulseMems_14_port_4[1] && _zz_71) begin
      pulseMems_14_symbol1[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[63 : 32];
    end
    if(_zz_pulseMems_14_port_4[2] && _zz_71) begin
      pulseMems_14_symbol2[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[95 : 64];
    end
    if(_zz_pulseMems_14_port_4[3] && _zz_71) begin
      pulseMems_14_symbol3[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[127 : 96];
    end
    if(_zz_pulseMems_14_port_4[4] && _zz_71) begin
      pulseMems_14_symbol4[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[159 : 128];
    end
    if(_zz_pulseMems_14_port_4[5] && _zz_71) begin
      pulseMems_14_symbol5[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[191 : 160];
    end
    if(_zz_pulseMems_14_port_4[6] && _zz_71) begin
      pulseMems_14_symbol6[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[223 : 192];
    end
    if(_zz_pulseMems_14_port_4[7] && _zz_71) begin
      pulseMems_14_symbol7[_zz_pulseMems_14_port] <= _zz_pulseMems_14_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_14_sample) begin
      _zz_pulseMems_14symbol_read <= pulseMems_14_symbol0[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_1 <= pulseMems_14_symbol1[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_2 <= pulseMems_14_symbol2[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_3 <= pulseMems_14_symbol3[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_4 <= pulseMems_14_symbol4[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_5 <= pulseMems_14_symbol5[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_6 <= pulseMems_14_symbol6[dsp_chans_14_addr];
      _zz_pulseMems_14symbol_read_7 <= pulseMems_14_symbol7[dsp_chans_14_addr];
    end
  end

  always @(*) begin
    pulseMems_15_spinal_port1 = {_zz_pulseMems_15symbol_read_7, _zz_pulseMems_15symbol_read_6, _zz_pulseMems_15symbol_read_5, _zz_pulseMems_15symbol_read_4, _zz_pulseMems_15symbol_read_3, _zz_pulseMems_15symbol_read_2, _zz_pulseMems_15symbol_read_1, _zz_pulseMems_15symbol_read};
  end
  always @(posedge clk) begin
    if(_zz_pulseMems_15_port_4[0] && _zz_76) begin
      pulseMems_15_symbol0[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[31 : 0];
    end
    if(_zz_pulseMems_15_port_4[1] && _zz_76) begin
      pulseMems_15_symbol1[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[63 : 32];
    end
    if(_zz_pulseMems_15_port_4[2] && _zz_76) begin
      pulseMems_15_symbol2[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[95 : 64];
    end
    if(_zz_pulseMems_15_port_4[3] && _zz_76) begin
      pulseMems_15_symbol3[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[127 : 96];
    end
    if(_zz_pulseMems_15_port_4[4] && _zz_76) begin
      pulseMems_15_symbol4[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[159 : 128];
    end
    if(_zz_pulseMems_15_port_4[5] && _zz_76) begin
      pulseMems_15_symbol5[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[191 : 160];
    end
    if(_zz_pulseMems_15_port_4[6] && _zz_76) begin
      pulseMems_15_symbol6[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[223 : 192];
    end
    if(_zz_pulseMems_15_port_4[7] && _zz_76) begin
      pulseMems_15_symbol7[_zz_pulseMems_15_port] <= _zz_pulseMems_15_port_3[255 : 224];
    end
  end

  always @(posedge dspClk) begin
    if(_zz_dsp_chans_15_sample) begin
      _zz_pulseMems_15symbol_read <= pulseMems_15_symbol0[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_1 <= pulseMems_15_symbol1[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_2 <= pulseMems_15_symbol2[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_3 <= pulseMems_15_symbol3[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_4 <= pulseMems_15_symbol4[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_5 <= pulseMems_15_symbol5[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_6 <= pulseMems_15_symbol6[dsp_chans_15_addr];
      _zz_pulseMems_15symbol_read_7 <= pulseMems_15_symbol7[dsp_chans_15_addr];
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_2) begin
      recordMems_0_spinal_port0 <= recordMems_0[_zz_factory_readRsp_data_1];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_0[dsp_recWrAddr] <= io_adc_0_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_5) begin
      recordMems_1_spinal_port0 <= recordMems_1[_zz_factory_readRsp_data_4];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_1[dsp_recWrAddr] <= io_adc_1_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_8) begin
      recordMems_2_spinal_port0 <= recordMems_2[_zz_factory_readRsp_data_7];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_2[dsp_recWrAddr] <= io_adc_2_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_11) begin
      recordMems_3_spinal_port0 <= recordMems_3[_zz_factory_readRsp_data_10];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_3[dsp_recWrAddr] <= io_adc_3_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_14) begin
      recordMems_4_spinal_port0 <= recordMems_4[_zz_factory_readRsp_data_13];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_4[dsp_recWrAddr] <= io_adc_4_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_17) begin
      recordMems_5_spinal_port0 <= recordMems_5[_zz_factory_readRsp_data_16];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_5[dsp_recWrAddr] <= io_adc_5_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_20) begin
      recordMems_6_spinal_port0 <= recordMems_6[_zz_factory_readRsp_data_19];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_6[dsp_recWrAddr] <= io_adc_6_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_23) begin
      recordMems_7_spinal_port0 <= recordMems_7[_zz_factory_readRsp_data_22];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_7[dsp_recWrAddr] <= io_adc_7_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_26) begin
      recordMems_8_spinal_port0 <= recordMems_8[_zz_factory_readRsp_data_25];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_8[dsp_recWrAddr] <= io_adc_8_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_29) begin
      recordMems_9_spinal_port0 <= recordMems_9[_zz_factory_readRsp_data_28];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_9[dsp_recWrAddr] <= io_adc_9_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_32) begin
      recordMems_10_spinal_port0 <= recordMems_10[_zz_factory_readRsp_data_31];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_10[dsp_recWrAddr] <= io_adc_10_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_35) begin
      recordMems_11_spinal_port0 <= recordMems_11[_zz_factory_readRsp_data_34];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_11[dsp_recWrAddr] <= io_adc_11_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_38) begin
      recordMems_12_spinal_port0 <= recordMems_12[_zz_factory_readRsp_data_37];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_12[dsp_recWrAddr] <= io_adc_12_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_41) begin
      recordMems_13_spinal_port0 <= recordMems_13[_zz_factory_readRsp_data_40];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_13[dsp_recWrAddr] <= io_adc_13_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_44) begin
      recordMems_14_spinal_port0 <= recordMems_14[_zz_factory_readRsp_data_43];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_14[dsp_recWrAddr] <= io_adc_14_payload_regNext;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_factory_readRsp_data_47) begin
      recordMems_15_spinal_port0 <= recordMems_15[_zz_factory_readRsp_data_46];
    end
  end

  always @(posedge dspClk) begin
    if(dsp_recWrite) begin
      recordMems_15[dsp_recWrAddr] <= io_adc_15_payload_regNext;
    end
  end

  FlowCCByToggle starts_0_ccToggle (
    .io_input_valid       (starts_0_valid                           ), //i
    .io_input_payload     (starts_0_payload[31:0]                   ), //i
    .io_output_valid      (starts_0_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_0_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //o
  );
  FlowCCByToggle_1 starts_1_ccToggle (
    .io_input_valid       (starts_1_valid                           ), //i
    .io_input_payload     (starts_1_payload[31:0]                   ), //i
    .io_output_valid      (starts_1_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_1_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_2_ccToggle (
    .io_input_valid       (starts_2_valid                           ), //i
    .io_input_payload     (starts_2_payload[31:0]                   ), //i
    .io_output_valid      (starts_2_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_2_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_3_ccToggle (
    .io_input_valid       (starts_3_valid                           ), //i
    .io_input_payload     (starts_3_payload[31:0]                   ), //i
    .io_output_valid      (starts_3_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_3_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_4_ccToggle (
    .io_input_valid       (starts_4_valid                           ), //i
    .io_input_payload     (starts_4_payload[31:0]                   ), //i
    .io_output_valid      (starts_4_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_4_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_5_ccToggle (
    .io_input_valid       (starts_5_valid                           ), //i
    .io_input_payload     (starts_5_payload[31:0]                   ), //i
    .io_output_valid      (starts_5_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_5_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_6_ccToggle (
    .io_input_valid       (starts_6_valid                           ), //i
    .io_input_payload     (starts_6_payload[31:0]                   ), //i
    .io_output_valid      (starts_6_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_6_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_7_ccToggle (
    .io_input_valid       (starts_7_valid                           ), //i
    .io_input_payload     (starts_7_payload[31:0]                   ), //i
    .io_output_valid      (starts_7_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_7_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_8_ccToggle (
    .io_input_valid       (starts_8_valid                           ), //i
    .io_input_payload     (starts_8_payload[31:0]                   ), //i
    .io_output_valid      (starts_8_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_8_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_9_ccToggle (
    .io_input_valid       (starts_9_valid                           ), //i
    .io_input_payload     (starts_9_payload[31:0]                   ), //i
    .io_output_valid      (starts_9_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_9_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                      ), //i
    .reset                (reset                                    ), //i
    .dspClk               (dspClk                                   ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1   )  //i
  );
  FlowCCByToggle_1 starts_10_ccToggle (
    .io_input_valid       (starts_10_valid                           ), //i
    .io_input_payload     (starts_10_payload[31:0]                   ), //i
    .io_output_valid      (starts_10_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_10_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .dspClk               (dspClk                                    ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1    )  //i
  );
  FlowCCByToggle_1 starts_11_ccToggle (
    .io_input_valid       (starts_11_valid                           ), //i
    .io_input_payload     (starts_11_payload[31:0]                   ), //i
    .io_output_valid      (starts_11_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_11_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .dspClk               (dspClk                                    ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1    )  //i
  );
  FlowCCByToggle_1 starts_12_ccToggle (
    .io_input_valid       (starts_12_valid                           ), //i
    .io_input_payload     (starts_12_payload[31:0]                   ), //i
    .io_output_valid      (starts_12_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_12_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .dspClk               (dspClk                                    ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1    )  //i
  );
  FlowCCByToggle_1 starts_13_ccToggle (
    .io_input_valid       (starts_13_valid                           ), //i
    .io_input_payload     (starts_13_payload[31:0]                   ), //i
    .io_output_valid      (starts_13_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_13_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .dspClk               (dspClk                                    ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1    )  //i
  );
  FlowCCByToggle_1 starts_14_ccToggle (
    .io_input_valid       (starts_14_valid                           ), //i
    .io_input_payload     (starts_14_payload[31:0]                   ), //i
    .io_output_valid      (starts_14_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_14_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .dspClk               (dspClk                                    ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1    )  //i
  );
  FlowCCByToggle_1 starts_15_ccToggle (
    .io_input_valid       (starts_15_valid                           ), //i
    .io_input_payload     (starts_15_payload[31:0]                   ), //i
    .io_output_valid      (starts_15_ccToggle_io_output_valid        ), //o
    .io_output_payload    (starts_15_ccToggle_io_output_payload[31:0]), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .dspClk               (dspClk                                    ), //i
    .reset_synchronized_1 (starts_0_ccToggle_reset_synchronized_1    )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_17 dsp_recAddr_buffercc (
    .io_dataIn  (dsp_recAddr[10:0]                    ), //i
    .io_dataOut (dsp_recAddr_buffercc_io_dataOut[10:0]), //o
    .clk        (clk                                  ), //i
    .reset      (reset                                )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_18 bufferCC_19 (
    .io_dataIn  (bufferCC_19_io_dataIn[15:0] ), //i
    .io_dataOut (bufferCC_19_io_dataOut[15:0]), //o
    .clk        (clk                         ), //i
    .reset      (reset                       )  //i
  );
  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : _zz_Axi4Incr_result = {_zz_Axi4Incr_result_1,_zz_Axi4Incr_result_2};
      3'b001 : _zz_Axi4Incr_result = {_zz_Axi4Incr_result_3,_zz_Axi4Incr_result_4};
      3'b010 : _zz_Axi4Incr_result = {_zz_Axi4Incr_result_5,_zz_Axi4Incr_result_6};
      3'b011 : _zz_Axi4Incr_result = {_zz_Axi4Incr_result_7,_zz_Axi4Incr_result_8};
      3'b100 : _zz_Axi4Incr_result = {_zz_Axi4Incr_result_9,_zz_Axi4Incr_result_10};
      default : _zz_Axi4Incr_result = {_zz_Axi4Incr_result_11,_zz_Axi4Incr_result_12};
    endcase
  end

  always @(*) begin
    case(Axi4Incr_wrapCase_1)
      3'b000 : _zz_Axi4Incr_result_1_1 = {_zz_Axi4Incr_result_1_2,_zz_Axi4Incr_result_1_3};
      3'b001 : _zz_Axi4Incr_result_1_1 = {_zz_Axi4Incr_result_1_4,_zz_Axi4Incr_result_1_5};
      3'b010 : _zz_Axi4Incr_result_1_1 = {_zz_Axi4Incr_result_1_6,_zz_Axi4Incr_result_1_7};
      3'b011 : _zz_Axi4Incr_result_1_1 = {_zz_Axi4Incr_result_1_8,_zz_Axi4Incr_result_1_9};
      3'b100 : _zz_Axi4Incr_result_1_1 = {_zz_Axi4Incr_result_1_10,_zz_Axi4Incr_result_1_11};
      default : _zz_Axi4Incr_result_1_1 = {_zz_Axi4Incr_result_1_12,_zz_Axi4Incr_result_1_13};
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_49)
      1'b0 : _zz_factory_readRsp_data_48 = _zz_factory_readRsp_data_2[31 : 0];
      default : _zz_factory_readRsp_data_48 = _zz_factory_readRsp_data_2[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_51)
      1'b0 : _zz_factory_readRsp_data_50 = _zz_factory_readRsp_data_5[31 : 0];
      default : _zz_factory_readRsp_data_50 = _zz_factory_readRsp_data_5[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_53)
      1'b0 : _zz_factory_readRsp_data_52 = _zz_factory_readRsp_data_8[31 : 0];
      default : _zz_factory_readRsp_data_52 = _zz_factory_readRsp_data_8[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_55)
      1'b0 : _zz_factory_readRsp_data_54 = _zz_factory_readRsp_data_11[31 : 0];
      default : _zz_factory_readRsp_data_54 = _zz_factory_readRsp_data_11[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_57)
      1'b0 : _zz_factory_readRsp_data_56 = _zz_factory_readRsp_data_14[31 : 0];
      default : _zz_factory_readRsp_data_56 = _zz_factory_readRsp_data_14[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_59)
      1'b0 : _zz_factory_readRsp_data_58 = _zz_factory_readRsp_data_17[31 : 0];
      default : _zz_factory_readRsp_data_58 = _zz_factory_readRsp_data_17[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_61)
      1'b0 : _zz_factory_readRsp_data_60 = _zz_factory_readRsp_data_20[31 : 0];
      default : _zz_factory_readRsp_data_60 = _zz_factory_readRsp_data_20[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_63)
      1'b0 : _zz_factory_readRsp_data_62 = _zz_factory_readRsp_data_23[31 : 0];
      default : _zz_factory_readRsp_data_62 = _zz_factory_readRsp_data_23[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_65)
      1'b0 : _zz_factory_readRsp_data_64 = _zz_factory_readRsp_data_26[31 : 0];
      default : _zz_factory_readRsp_data_64 = _zz_factory_readRsp_data_26[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_67)
      1'b0 : _zz_factory_readRsp_data_66 = _zz_factory_readRsp_data_29[31 : 0];
      default : _zz_factory_readRsp_data_66 = _zz_factory_readRsp_data_29[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_69)
      1'b0 : _zz_factory_readRsp_data_68 = _zz_factory_readRsp_data_32[31 : 0];
      default : _zz_factory_readRsp_data_68 = _zz_factory_readRsp_data_32[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_71)
      1'b0 : _zz_factory_readRsp_data_70 = _zz_factory_readRsp_data_35[31 : 0];
      default : _zz_factory_readRsp_data_70 = _zz_factory_readRsp_data_35[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_73)
      1'b0 : _zz_factory_readRsp_data_72 = _zz_factory_readRsp_data_38[31 : 0];
      default : _zz_factory_readRsp_data_72 = _zz_factory_readRsp_data_38[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_75)
      1'b0 : _zz_factory_readRsp_data_74 = _zz_factory_readRsp_data_41[31 : 0];
      default : _zz_factory_readRsp_data_74 = _zz_factory_readRsp_data_41[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_77)
      1'b0 : _zz_factory_readRsp_data_76 = _zz_factory_readRsp_data_44[31 : 0];
      default : _zz_factory_readRsp_data_76 = _zz_factory_readRsp_data_44[63 : 32];
    endcase
  end

  always @(*) begin
    case(_zz_factory_readRsp_data_79)
      1'b0 : _zz_factory_readRsp_data_78 = _zz_factory_readRsp_data_47[31 : 0];
      default : _zz_factory_readRsp_data_78 = _zz_factory_readRsp_data_47[63 : 32];
    endcase
  end

  assign io_dac_0_valid = 1'b1;
  assign io_adc_0_ready = 1'b1;
  assign io_dac_1_valid = 1'b1;
  assign io_adc_1_ready = 1'b1;
  assign io_dac_2_valid = 1'b1;
  assign io_adc_2_ready = 1'b1;
  assign io_dac_3_valid = 1'b1;
  assign io_adc_3_ready = 1'b1;
  assign io_dac_4_valid = 1'b1;
  assign io_adc_4_ready = 1'b1;
  assign io_dac_5_valid = 1'b1;
  assign io_adc_5_ready = 1'b1;
  assign io_dac_6_valid = 1'b1;
  assign io_adc_6_ready = 1'b1;
  assign io_dac_7_valid = 1'b1;
  assign io_adc_7_ready = 1'b1;
  assign io_dac_8_valid = 1'b1;
  assign io_adc_8_ready = 1'b1;
  assign io_dac_9_valid = 1'b1;
  assign io_adc_9_ready = 1'b1;
  assign io_dac_10_valid = 1'b1;
  assign io_adc_10_ready = 1'b1;
  assign io_dac_11_valid = 1'b1;
  assign io_adc_11_ready = 1'b1;
  assign io_dac_12_valid = 1'b1;
  assign io_adc_12_ready = 1'b1;
  assign io_dac_13_valid = 1'b1;
  assign io_adc_13_ready = 1'b1;
  assign io_dac_14_valid = 1'b1;
  assign io_adc_14_ready = 1'b1;
  assign io_dac_15_valid = 1'b1;
  assign io_adc_15_ready = 1'b1;
  assign factory_readErrorFlag = 1'b0;
  assign factory_writeErrorFlag = 1'b0;
  always @(*) begin
    factory_readHaltRequest = 1'b0;
    if(when_Axi4SlaveFactory_l107) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_1) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_1) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_2) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_2) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_3) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_3) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_4) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_4) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_5) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_5) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_6) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_6) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_7) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_7) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_8) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_8) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_9) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_9) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_10) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_10) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_11) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_11) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_12) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_12) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_13) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_13) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_14) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_14) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
    if(when_Axi4SlaveFactory_l107_15) begin
      if(factory_readDataStage_valid) begin
        if(when_BusSlaveFactory_l709_15) begin
          factory_readHaltRequest = 1'b1;
        end
      end
    end
  end

  assign factory_writeHaltRequest = 1'b0;
  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_highCat = unburstify_buffer_transaction_addr[31 : 12];
  assign Axi4Incr_sizeValue = {(2'b10 == Axi4Incr_validSize),{(2'b01 == Axi4Incr_validSize),(2'b00 == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_Axi4Incr_alignMask};
  assign Axi4Incr_base = (unburstify_buffer_transaction_addr[11 : 0] & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_Axi4Incr_baseIncr);
  always @(*) begin
    casez(unburstify_buffer_len)
      8'b????1??? : begin
        _zz_Axi4Incr_wrapCase = 2'b11;
      end
      8'b????01?? : begin
        _zz_Axi4Incr_wrapCase = 2'b10;
      end
      8'b????001? : begin
        _zz_Axi4Incr_wrapCase = 2'b01;
      end
      default : begin
        _zz_Axi4Incr_wrapCase = 2'b00;
      end
    endcase
  end

  assign Axi4Incr_wrapCase = (_zz_Axi4Incr_wrapCase_2 + _zz_Axi4Incr_wrapCase_3);
  always @(*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = {Axi4Incr_highCat,_zz_Axi4Incr_result};
      end
      default : begin
        Axi4Incr_result = {Axi4Incr_highCat,Axi4Incr_baseIncr};
      end
    endcase
  end

  always @(*) begin
    io_axi_aw_ready = 1'b0;
    if(!unburstify_buffer_valid) begin
      io_axi_aw_ready = unburstify_result_ready;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_aw_valid;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      unburstify_result_payload_last = 1'b1;
      if(when_Axi4Channel_l337) begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_aw_payload_id;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_region = unburstify_buffer_transaction_region;
    end else begin
      unburstify_result_payload_fragment_region = io_axi_aw_payload_region;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_aw_payload_size;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_aw_payload_burst;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_lock = unburstify_buffer_transaction_lock;
    end else begin
      unburstify_result_payload_fragment_lock = io_axi_aw_payload_lock;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_cache = unburstify_buffer_transaction_cache;
    end else begin
      unburstify_result_payload_fragment_cache = io_axi_aw_payload_cache;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_qos = unburstify_buffer_transaction_qos;
    end else begin
      unburstify_result_payload_fragment_qos = io_axi_aw_payload_qos;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_prot = unburstify_buffer_transaction_prot;
    end else begin
      unburstify_result_payload_fragment_prot = io_axi_aw_payload_prot;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid) begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_aw_payload_addr;
    end
  end

  assign when_Axi4Channel_l337 = (io_axi_aw_payload_len != 8'h0);
  assign factory_writeOccur = (factory_writeJoinEvent_valid && factory_writeJoinEvent_ready);
  assign factory_writeJoinEvent_valid = (unburstify_result_valid && io_axi_w_valid);
  assign unburstify_result_ready = factory_writeOccur;
  assign io_axi_w_ready = factory_writeOccur;
  always @(*) begin
    factory_writeRsp_ready = factory_writeRsp_stage_ready;
    if(when_Stream_l477) begin
      factory_writeRsp_ready = 1'b1;
    end
  end

  assign when_Stream_l477 = (! factory_writeRsp_stage_valid);
  assign factory_writeRsp_stage_valid = factory_writeRsp_rValid;
  assign factory_writeRsp_stage_payload_id = factory_writeRsp_rData_id;
  assign factory_writeRsp_stage_payload_resp = factory_writeRsp_rData_resp;
  assign io_axi_b_valid = factory_writeRsp_stage_valid;
  assign factory_writeRsp_stage_ready = io_axi_b_ready;
  assign io_axi_b_payload_id = factory_writeRsp_stage_payload_id;
  assign io_axi_b_payload_resp = factory_writeRsp_stage_payload_resp;
  always @(*) begin
    if(io_axi_w_payload_last) begin
      factory_writeJoinEvent_ready = (factory_writeRsp_ready && (! factory_writeHaltRequest));
    end else begin
      factory_writeJoinEvent_ready = (! factory_writeHaltRequest);
    end
  end

  always @(*) begin
    if(io_axi_w_payload_last) begin
      factory_writeRsp_valid = factory_writeOccur;
    end else begin
      factory_writeRsp_valid = 1'b0;
    end
  end

  assign unburstify_buffer_last_1 = (unburstify_buffer_beat_1 == 8'h01);
  assign Axi4Incr_validSize_1 = unburstify_buffer_transaction_size_1[1 : 0];
  assign Axi4Incr_highCat_1 = unburstify_buffer_transaction_addr_1[31 : 12];
  assign Axi4Incr_sizeValue_1 = {(2'b10 == Axi4Incr_validSize_1),{(2'b01 == Axi4Incr_validSize_1),(2'b00 == Axi4Incr_validSize_1)}};
  assign Axi4Incr_alignMask_1 = {10'd0, _zz_Axi4Incr_alignMask_1};
  assign Axi4Incr_base_1 = (unburstify_buffer_transaction_addr_1[11 : 0] & (~ Axi4Incr_alignMask_1));
  assign Axi4Incr_baseIncr_1 = (Axi4Incr_base_1 + _zz_Axi4Incr_baseIncr_1);
  always @(*) begin
    casez(unburstify_buffer_len_1)
      8'b????1??? : begin
        _zz_Axi4Incr_wrapCase_1 = 2'b11;
      end
      8'b????01?? : begin
        _zz_Axi4Incr_wrapCase_1 = 2'b10;
      end
      8'b????001? : begin
        _zz_Axi4Incr_wrapCase_1 = 2'b01;
      end
      default : begin
        _zz_Axi4Incr_wrapCase_1 = 2'b00;
      end
    endcase
  end

  assign Axi4Incr_wrapCase_1 = (_zz_Axi4Incr_wrapCase_1_1 + _zz_Axi4Incr_wrapCase_1_2);
  always @(*) begin
    case(unburstify_buffer_transaction_burst_1)
      2'b00 : begin
        Axi4Incr_result_1 = unburstify_buffer_transaction_addr_1;
      end
      2'b10 : begin
        Axi4Incr_result_1 = {Axi4Incr_highCat_1,_zz_Axi4Incr_result_1_1};
      end
      default : begin
        Axi4Incr_result_1 = {Axi4Incr_highCat_1,Axi4Incr_baseIncr_1};
      end
    endcase
  end

  always @(*) begin
    io_axi_ar_ready = 1'b0;
    if(!unburstify_buffer_valid_1) begin
      io_axi_ar_ready = unburstify_result_ready_1;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_valid_1 = 1'b1;
    end else begin
      unburstify_result_valid_1 = io_axi_ar_valid;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_last_1 = unburstify_buffer_last_1;
    end else begin
      unburstify_result_payload_last_1 = 1'b1;
      if(when_Axi4Channel_l337_1) begin
        unburstify_result_payload_last_1 = 1'b0;
      end
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_id_1 = unburstify_buffer_transaction_id_1;
    end else begin
      unburstify_result_payload_fragment_id_1 = io_axi_ar_payload_id;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_region_1 = unburstify_buffer_transaction_region_1;
    end else begin
      unburstify_result_payload_fragment_region_1 = io_axi_ar_payload_region;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_size_1 = unburstify_buffer_transaction_size_1;
    end else begin
      unburstify_result_payload_fragment_size_1 = io_axi_ar_payload_size;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_burst_1 = unburstify_buffer_transaction_burst_1;
    end else begin
      unburstify_result_payload_fragment_burst_1 = io_axi_ar_payload_burst;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_lock_1 = unburstify_buffer_transaction_lock_1;
    end else begin
      unburstify_result_payload_fragment_lock_1 = io_axi_ar_payload_lock;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_cache_1 = unburstify_buffer_transaction_cache_1;
    end else begin
      unburstify_result_payload_fragment_cache_1 = io_axi_ar_payload_cache;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_qos_1 = unburstify_buffer_transaction_qos_1;
    end else begin
      unburstify_result_payload_fragment_qos_1 = io_axi_ar_payload_qos;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_prot_1 = unburstify_buffer_transaction_prot_1;
    end else begin
      unburstify_result_payload_fragment_prot_1 = io_axi_ar_payload_prot;
    end
  end

  always @(*) begin
    if(unburstify_buffer_valid_1) begin
      unburstify_result_payload_fragment_addr_1 = Axi4Incr_result_1;
    end else begin
      unburstify_result_payload_fragment_addr_1 = io_axi_ar_payload_addr;
    end
  end

  assign when_Axi4Channel_l337_1 = (io_axi_ar_payload_len != 8'h0);
  always @(*) begin
    unburstify_result_ready_1 = factory_readDataStage_ready;
    if(when_Stream_l477_1) begin
      unburstify_result_ready_1 = 1'b1;
    end
  end

  assign when_Stream_l477_1 = (! factory_readDataStage_valid);
  assign factory_readDataStage_valid = unburstify_result_rValid;
  assign factory_readDataStage_payload_last = unburstify_result_rData_last;
  assign factory_readDataStage_payload_fragment_addr = unburstify_result_rData_fragment_addr;
  assign factory_readDataStage_payload_fragment_id = unburstify_result_rData_fragment_id;
  assign factory_readDataStage_payload_fragment_region = unburstify_result_rData_fragment_region;
  assign factory_readDataStage_payload_fragment_size = unburstify_result_rData_fragment_size;
  assign factory_readDataStage_payload_fragment_burst = unburstify_result_rData_fragment_burst;
  assign factory_readDataStage_payload_fragment_lock = unburstify_result_rData_fragment_lock;
  assign factory_readDataStage_payload_fragment_cache = unburstify_result_rData_fragment_cache;
  assign factory_readDataStage_payload_fragment_qos = unburstify_result_rData_fragment_qos;
  assign factory_readDataStage_payload_fragment_prot = unburstify_result_rData_fragment_prot;
  assign _zz_factory_readDataStage_ready = (! factory_readHaltRequest);
  assign factory_readDataStage_haltWhen_valid = (factory_readDataStage_valid && _zz_factory_readDataStage_ready);
  assign factory_readDataStage_ready = (factory_readDataStage_haltWhen_ready && _zz_factory_readDataStage_ready);
  assign factory_readDataStage_haltWhen_payload_last = factory_readDataStage_payload_last;
  assign factory_readDataStage_haltWhen_payload_fragment_addr = factory_readDataStage_payload_fragment_addr;
  assign factory_readDataStage_haltWhen_payload_fragment_id = factory_readDataStage_payload_fragment_id;
  assign factory_readDataStage_haltWhen_payload_fragment_region = factory_readDataStage_payload_fragment_region;
  assign factory_readDataStage_haltWhen_payload_fragment_size = factory_readDataStage_payload_fragment_size;
  assign factory_readDataStage_haltWhen_payload_fragment_burst = factory_readDataStage_payload_fragment_burst;
  assign factory_readDataStage_haltWhen_payload_fragment_lock = factory_readDataStage_payload_fragment_lock;
  assign factory_readDataStage_haltWhen_payload_fragment_cache = factory_readDataStage_payload_fragment_cache;
  assign factory_readDataStage_haltWhen_payload_fragment_qos = factory_readDataStage_payload_fragment_qos;
  assign factory_readDataStage_haltWhen_payload_fragment_prot = factory_readDataStage_payload_fragment_prot;
  assign factory_readDataStage_haltWhen_translated_valid = factory_readDataStage_haltWhen_valid;
  assign factory_readDataStage_haltWhen_ready = factory_readDataStage_haltWhen_translated_ready;
  assign factory_readDataStage_haltWhen_translated_payload_data = factory_readRsp_data;
  assign factory_readDataStage_haltWhen_translated_payload_id = factory_readRsp_id;
  assign factory_readDataStage_haltWhen_translated_payload_resp = factory_readRsp_resp;
  assign factory_readDataStage_haltWhen_translated_payload_last = factory_readRsp_last;
  assign io_axi_r_valid = factory_readDataStage_haltWhen_translated_valid;
  assign factory_readDataStage_haltWhen_translated_ready = io_axi_r_ready;
  assign io_axi_r_payload_data = factory_readDataStage_haltWhen_translated_payload_data;
  assign io_axi_r_payload_id = factory_readDataStage_haltWhen_translated_payload_id;
  assign io_axi_r_payload_resp = factory_readDataStage_haltWhen_translated_payload_resp;
  assign io_axi_r_payload_last = factory_readDataStage_haltWhen_translated_payload_last;
  assign factory_writeRsp_payload_id = unburstify_result_payload_fragment_id;
  always @(*) begin
    if(factory_writeErrorFlag) begin
      factory_writeRsp_payload_resp = 2'b10;
    end else begin
      factory_writeRsp_payload_resp = 2'b00;
    end
  end

  always @(*) begin
    if(factory_readErrorFlag) begin
      factory_readRsp_resp = 2'b10;
    end else begin
      factory_readRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    factory_readRsp_data = 32'h0;
    case(factory_readAddressMasked)
      32'h80000040 : begin
        factory_readRsp_data[10 : 0] = dsp_recAddr_buffercc_io_dataOut;
      end
      32'h80000044 : begin
        factory_readRsp_data[15 : 0] = bufferCC_19_io_dataOut;
      end
      default : begin
      end
    endcase
    if(when_Axi4SlaveFactory_l107) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_48;
    end
    if(when_Axi4SlaveFactory_l107_1) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_50;
    end
    if(when_Axi4SlaveFactory_l107_2) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_52;
    end
    if(when_Axi4SlaveFactory_l107_3) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_54;
    end
    if(when_Axi4SlaveFactory_l107_4) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_56;
    end
    if(when_Axi4SlaveFactory_l107_5) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_58;
    end
    if(when_Axi4SlaveFactory_l107_6) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_60;
    end
    if(when_Axi4SlaveFactory_l107_7) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_62;
    end
    if(when_Axi4SlaveFactory_l107_8) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_64;
    end
    if(when_Axi4SlaveFactory_l107_9) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_66;
    end
    if(when_Axi4SlaveFactory_l107_10) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_68;
    end
    if(when_Axi4SlaveFactory_l107_11) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_70;
    end
    if(when_Axi4SlaveFactory_l107_12) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_72;
    end
    if(when_Axi4SlaveFactory_l107_13) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_74;
    end
    if(when_Axi4SlaveFactory_l107_14) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_76;
    end
    if(when_Axi4SlaveFactory_l107_15) begin
      factory_readRsp_data[31 : 0] = _zz_factory_readRsp_data_78;
    end
  end

  assign factory_readRsp_last = factory_readDataStage_payload_last;
  assign factory_readRsp_id = factory_readDataStage_payload_fragment_id;
  assign factory_readOccur = (io_axi_r_valid && io_axi_r_ready);
  assign factory_readAddressMasked = (factory_readDataStage_payload_fragment_addr & (~ 32'h00000003));
  assign factory_writeAddressMasked = (unburstify_result_payload_fragment_addr & (~ 32'h00000003));
  always @(*) begin
    starts_0_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000000 : begin
        if(factory_writeOccur) begin
          starts_0_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_1_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000004 : begin
        if(factory_writeOccur) begin
          starts_1_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_2_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000008 : begin
        if(factory_writeOccur) begin
          starts_2_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_3_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h8000000c : begin
        if(factory_writeOccur) begin
          starts_3_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_4_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000010 : begin
        if(factory_writeOccur) begin
          starts_4_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_5_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000014 : begin
        if(factory_writeOccur) begin
          starts_5_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_6_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000018 : begin
        if(factory_writeOccur) begin
          starts_6_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_7_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h8000001c : begin
        if(factory_writeOccur) begin
          starts_7_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_8_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000020 : begin
        if(factory_writeOccur) begin
          starts_8_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_9_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000024 : begin
        if(factory_writeOccur) begin
          starts_9_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_10_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000028 : begin
        if(factory_writeOccur) begin
          starts_10_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_11_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h8000002c : begin
        if(factory_writeOccur) begin
          starts_11_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_12_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000030 : begin
        if(factory_writeOccur) begin
          starts_12_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_13_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000034 : begin
        if(factory_writeOccur) begin
          starts_13_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_14_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h80000038 : begin
        if(factory_writeOccur) begin
          starts_14_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    starts_15_valid = 1'b0;
    case(factory_writeAddressMasked)
      32'h8000003c : begin
        if(factory_writeOccur) begin
          starts_15_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(when_Axi4SlaveFactory_l89) begin
      if(factory_writeOccur) begin
        _zz_1 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_4 = 8'h0;
    _zz_4[_zz__zz_4[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data = _zz__zz_factory_readRsp_data[12:0];
  assign _zz_factory_readRsp_data_1 = (_zz_factory_readRsp_data >>> 2'd3);
  assign _zz_factory_readRsp_data_2 = recordMems_0_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709 = 1'b0;
    if(when_Axi4SlaveFactory_l107) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_3 = (_zz_when_BusSlaveFactory_l709_2 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_1 = (_zz_when_BusSlaveFactory_l709_2 + _zz_when_BusSlaveFactory_l709);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_1 = 1'b0;
    end
  end

  always @(*) begin
    _zz_6 = 1'b0;
    if(when_Axi4SlaveFactory_l89_1) begin
      if(factory_writeOccur) begin
        _zz_6 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_9 = 8'h0;
    _zz_9[_zz__zz_9[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_3 = _zz__zz_factory_readRsp_data_3[12:0];
  assign _zz_factory_readRsp_data_4 = (_zz_factory_readRsp_data_3 >>> 2'd3);
  assign _zz_factory_readRsp_data_5 = recordMems_1_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_4 = 1'b0;
    if(when_Axi4SlaveFactory_l107_1) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_4 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_7 = (_zz_when_BusSlaveFactory_l709_6 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_5 = (_zz_when_BusSlaveFactory_l709_6 + _zz_when_BusSlaveFactory_l709_4);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_5 = 1'b0;
    end
  end

  always @(*) begin
    _zz_11 = 1'b0;
    if(when_Axi4SlaveFactory_l89_2) begin
      if(factory_writeOccur) begin
        _zz_11 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_14 = 8'h0;
    _zz_14[_zz__zz_14[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_6 = _zz__zz_factory_readRsp_data_6[12:0];
  assign _zz_factory_readRsp_data_7 = (_zz_factory_readRsp_data_6 >>> 2'd3);
  assign _zz_factory_readRsp_data_8 = recordMems_2_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_8 = 1'b0;
    if(when_Axi4SlaveFactory_l107_2) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_8 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_11 = (_zz_when_BusSlaveFactory_l709_10 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_9 = (_zz_when_BusSlaveFactory_l709_10 + _zz_when_BusSlaveFactory_l709_8);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_9 = 1'b0;
    end
  end

  always @(*) begin
    _zz_16 = 1'b0;
    if(when_Axi4SlaveFactory_l89_3) begin
      if(factory_writeOccur) begin
        _zz_16 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_19 = 8'h0;
    _zz_19[_zz__zz_19[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_9 = _zz__zz_factory_readRsp_data_9[12:0];
  assign _zz_factory_readRsp_data_10 = (_zz_factory_readRsp_data_9 >>> 2'd3);
  assign _zz_factory_readRsp_data_11 = recordMems_3_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_12 = 1'b0;
    if(when_Axi4SlaveFactory_l107_3) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_12 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_15 = (_zz_when_BusSlaveFactory_l709_14 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_13 = (_zz_when_BusSlaveFactory_l709_14 + _zz_when_BusSlaveFactory_l709_12);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_13 = 1'b0;
    end
  end

  always @(*) begin
    _zz_21 = 1'b0;
    if(when_Axi4SlaveFactory_l89_4) begin
      if(factory_writeOccur) begin
        _zz_21 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_24 = 8'h0;
    _zz_24[_zz__zz_24[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_12 = _zz__zz_factory_readRsp_data_12[12:0];
  assign _zz_factory_readRsp_data_13 = (_zz_factory_readRsp_data_12 >>> 2'd3);
  assign _zz_factory_readRsp_data_14 = recordMems_4_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_16 = 1'b0;
    if(when_Axi4SlaveFactory_l107_4) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_16 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_19 = (_zz_when_BusSlaveFactory_l709_18 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_17 = (_zz_when_BusSlaveFactory_l709_18 + _zz_when_BusSlaveFactory_l709_16);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_17 = 1'b0;
    end
  end

  always @(*) begin
    _zz_26 = 1'b0;
    if(when_Axi4SlaveFactory_l89_5) begin
      if(factory_writeOccur) begin
        _zz_26 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_29 = 8'h0;
    _zz_29[_zz__zz_29[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_15 = _zz__zz_factory_readRsp_data_15[12:0];
  assign _zz_factory_readRsp_data_16 = (_zz_factory_readRsp_data_15 >>> 2'd3);
  assign _zz_factory_readRsp_data_17 = recordMems_5_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_20 = 1'b0;
    if(when_Axi4SlaveFactory_l107_5) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_20 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_23 = (_zz_when_BusSlaveFactory_l709_22 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_21 = (_zz_when_BusSlaveFactory_l709_22 + _zz_when_BusSlaveFactory_l709_20);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_21 = 1'b0;
    end
  end

  always @(*) begin
    _zz_31 = 1'b0;
    if(when_Axi4SlaveFactory_l89_6) begin
      if(factory_writeOccur) begin
        _zz_31 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_34 = 8'h0;
    _zz_34[_zz__zz_34[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_18 = _zz__zz_factory_readRsp_data_18[12:0];
  assign _zz_factory_readRsp_data_19 = (_zz_factory_readRsp_data_18 >>> 2'd3);
  assign _zz_factory_readRsp_data_20 = recordMems_6_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_24 = 1'b0;
    if(when_Axi4SlaveFactory_l107_6) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_24 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_27 = (_zz_when_BusSlaveFactory_l709_26 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_25 = (_zz_when_BusSlaveFactory_l709_26 + _zz_when_BusSlaveFactory_l709_24);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_25 = 1'b0;
    end
  end

  always @(*) begin
    _zz_36 = 1'b0;
    if(when_Axi4SlaveFactory_l89_7) begin
      if(factory_writeOccur) begin
        _zz_36 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_39 = 8'h0;
    _zz_39[_zz__zz_39[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_21 = _zz__zz_factory_readRsp_data_21[12:0];
  assign _zz_factory_readRsp_data_22 = (_zz_factory_readRsp_data_21 >>> 2'd3);
  assign _zz_factory_readRsp_data_23 = recordMems_7_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_28 = 1'b0;
    if(when_Axi4SlaveFactory_l107_7) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_28 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_31 = (_zz_when_BusSlaveFactory_l709_30 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_29 = (_zz_when_BusSlaveFactory_l709_30 + _zz_when_BusSlaveFactory_l709_28);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_29 = 1'b0;
    end
  end

  always @(*) begin
    _zz_41 = 1'b0;
    if(when_Axi4SlaveFactory_l89_8) begin
      if(factory_writeOccur) begin
        _zz_41 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_44 = 8'h0;
    _zz_44[_zz__zz_44[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_24 = _zz__zz_factory_readRsp_data_24[12:0];
  assign _zz_factory_readRsp_data_25 = (_zz_factory_readRsp_data_24 >>> 2'd3);
  assign _zz_factory_readRsp_data_26 = recordMems_8_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_32 = 1'b0;
    if(when_Axi4SlaveFactory_l107_8) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_32 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_35 = (_zz_when_BusSlaveFactory_l709_34 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_33 = (_zz_when_BusSlaveFactory_l709_34 + _zz_when_BusSlaveFactory_l709_32);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_33 = 1'b0;
    end
  end

  always @(*) begin
    _zz_46 = 1'b0;
    if(when_Axi4SlaveFactory_l89_9) begin
      if(factory_writeOccur) begin
        _zz_46 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_49 = 8'h0;
    _zz_49[_zz__zz_49[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_27 = _zz__zz_factory_readRsp_data_27[12:0];
  assign _zz_factory_readRsp_data_28 = (_zz_factory_readRsp_data_27 >>> 2'd3);
  assign _zz_factory_readRsp_data_29 = recordMems_9_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_36 = 1'b0;
    if(when_Axi4SlaveFactory_l107_9) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_36 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_39 = (_zz_when_BusSlaveFactory_l709_38 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_37 = (_zz_when_BusSlaveFactory_l709_38 + _zz_when_BusSlaveFactory_l709_36);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_37 = 1'b0;
    end
  end

  always @(*) begin
    _zz_51 = 1'b0;
    if(when_Axi4SlaveFactory_l89_10) begin
      if(factory_writeOccur) begin
        _zz_51 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_54 = 8'h0;
    _zz_54[_zz__zz_54[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_30 = _zz__zz_factory_readRsp_data_30[12:0];
  assign _zz_factory_readRsp_data_31 = (_zz_factory_readRsp_data_30 >>> 2'd3);
  assign _zz_factory_readRsp_data_32 = recordMems_10_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_40 = 1'b0;
    if(when_Axi4SlaveFactory_l107_10) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_40 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_43 = (_zz_when_BusSlaveFactory_l709_42 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_41 = (_zz_when_BusSlaveFactory_l709_42 + _zz_when_BusSlaveFactory_l709_40);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_41 = 1'b0;
    end
  end

  always @(*) begin
    _zz_56 = 1'b0;
    if(when_Axi4SlaveFactory_l89_11) begin
      if(factory_writeOccur) begin
        _zz_56 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_59 = 8'h0;
    _zz_59[_zz__zz_59[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_33 = _zz__zz_factory_readRsp_data_33[12:0];
  assign _zz_factory_readRsp_data_34 = (_zz_factory_readRsp_data_33 >>> 2'd3);
  assign _zz_factory_readRsp_data_35 = recordMems_11_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_44 = 1'b0;
    if(when_Axi4SlaveFactory_l107_11) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_44 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_47 = (_zz_when_BusSlaveFactory_l709_46 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_45 = (_zz_when_BusSlaveFactory_l709_46 + _zz_when_BusSlaveFactory_l709_44);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_45 = 1'b0;
    end
  end

  always @(*) begin
    _zz_61 = 1'b0;
    if(when_Axi4SlaveFactory_l89_12) begin
      if(factory_writeOccur) begin
        _zz_61 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_64 = 8'h0;
    _zz_64[_zz__zz_64[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_36 = _zz__zz_factory_readRsp_data_36[12:0];
  assign _zz_factory_readRsp_data_37 = (_zz_factory_readRsp_data_36 >>> 2'd3);
  assign _zz_factory_readRsp_data_38 = recordMems_12_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_48 = 1'b0;
    if(when_Axi4SlaveFactory_l107_12) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_48 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_51 = (_zz_when_BusSlaveFactory_l709_50 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_49 = (_zz_when_BusSlaveFactory_l709_50 + _zz_when_BusSlaveFactory_l709_48);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_49 = 1'b0;
    end
  end

  always @(*) begin
    _zz_66 = 1'b0;
    if(when_Axi4SlaveFactory_l89_13) begin
      if(factory_writeOccur) begin
        _zz_66 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_69 = 8'h0;
    _zz_69[_zz__zz_69[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_39 = _zz__zz_factory_readRsp_data_39[12:0];
  assign _zz_factory_readRsp_data_40 = (_zz_factory_readRsp_data_39 >>> 2'd3);
  assign _zz_factory_readRsp_data_41 = recordMems_13_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_52 = 1'b0;
    if(when_Axi4SlaveFactory_l107_13) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_52 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_55 = (_zz_when_BusSlaveFactory_l709_54 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_53 = (_zz_when_BusSlaveFactory_l709_54 + _zz_when_BusSlaveFactory_l709_52);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_53 = 1'b0;
    end
  end

  always @(*) begin
    _zz_71 = 1'b0;
    if(when_Axi4SlaveFactory_l89_14) begin
      if(factory_writeOccur) begin
        _zz_71 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_74 = 8'h0;
    _zz_74[_zz__zz_74[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_42 = _zz__zz_factory_readRsp_data_42[12:0];
  assign _zz_factory_readRsp_data_43 = (_zz_factory_readRsp_data_42 >>> 2'd3);
  assign _zz_factory_readRsp_data_44 = recordMems_14_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_56 = 1'b0;
    if(when_Axi4SlaveFactory_l107_14) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_56 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_59 = (_zz_when_BusSlaveFactory_l709_58 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_57 = (_zz_when_BusSlaveFactory_l709_58 + _zz_when_BusSlaveFactory_l709_56);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_57 = 1'b0;
    end
  end

  always @(*) begin
    _zz_76 = 1'b0;
    if(when_Axi4SlaveFactory_l89_15) begin
      if(factory_writeOccur) begin
        _zz_76 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_79 = 8'h0;
    _zz_79[_zz__zz_79[4 : 2]] = 1'b1;
  end

  assign _zz_factory_readRsp_data_45 = _zz__zz_factory_readRsp_data_45[12:0];
  assign _zz_factory_readRsp_data_46 = (_zz_factory_readRsp_data_45 >>> 2'd3);
  assign _zz_factory_readRsp_data_47 = recordMems_15_spinal_port0;
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_60 = 1'b0;
    if(when_Axi4SlaveFactory_l107_15) begin
      if(factory_readDataStage_valid) begin
        _zz_when_BusSlaveFactory_l709_60 = 1'b1;
      end
    end
  end

  assign _zz_when_BusSlaveFactory_l709_63 = (_zz_when_BusSlaveFactory_l709_62 == 1'b1);
  always @(*) begin
    _zz_when_BusSlaveFactory_l709_61 = (_zz_when_BusSlaveFactory_l709_62 + _zz_when_BusSlaveFactory_l709_60);
    if(1'b0) begin
      _zz_when_BusSlaveFactory_l709_61 = 1'b0;
    end
  end

  assign when_SimpleAwg_l81 = (dsp_chans_0_timer != 32'h0);
  assign dsp_chans_0_sample = pulseMems_0_spinal_port1;
  assign io_dac_0_payload = _zz_io_dac_0_payload_1;
  assign when_SimpleAwg_l81_1 = (dsp_chans_1_timer != 32'h0);
  assign dsp_chans_1_sample = pulseMems_1_spinal_port1;
  assign io_dac_1_payload = _zz_io_dac_1_payload_1;
  assign when_SimpleAwg_l81_2 = (dsp_chans_2_timer != 32'h0);
  assign dsp_chans_2_sample = pulseMems_2_spinal_port1;
  assign io_dac_2_payload = _zz_io_dac_2_payload_1;
  assign when_SimpleAwg_l81_3 = (dsp_chans_3_timer != 32'h0);
  assign dsp_chans_3_sample = pulseMems_3_spinal_port1;
  assign io_dac_3_payload = _zz_io_dac_3_payload_1;
  assign when_SimpleAwg_l81_4 = (dsp_chans_4_timer != 32'h0);
  assign dsp_chans_4_sample = pulseMems_4_spinal_port1;
  assign io_dac_4_payload = _zz_io_dac_4_payload_1;
  assign when_SimpleAwg_l81_5 = (dsp_chans_5_timer != 32'h0);
  assign dsp_chans_5_sample = pulseMems_5_spinal_port1;
  assign io_dac_5_payload = _zz_io_dac_5_payload_1;
  assign when_SimpleAwg_l81_6 = (dsp_chans_6_timer != 32'h0);
  assign dsp_chans_6_sample = pulseMems_6_spinal_port1;
  assign io_dac_6_payload = _zz_io_dac_6_payload_1;
  assign when_SimpleAwg_l81_7 = (dsp_chans_7_timer != 32'h0);
  assign dsp_chans_7_sample = pulseMems_7_spinal_port1;
  assign io_dac_7_payload = _zz_io_dac_7_payload_1;
  assign when_SimpleAwg_l81_8 = (dsp_chans_8_timer != 32'h0);
  assign dsp_chans_8_sample = pulseMems_8_spinal_port1;
  assign io_dac_8_payload = _zz_io_dac_8_payload_1;
  assign when_SimpleAwg_l81_9 = (dsp_chans_9_timer != 32'h0);
  assign dsp_chans_9_sample = pulseMems_9_spinal_port1;
  assign io_dac_9_payload = _zz_io_dac_9_payload_1;
  assign when_SimpleAwg_l81_10 = (dsp_chans_10_timer != 32'h0);
  assign dsp_chans_10_sample = pulseMems_10_spinal_port1;
  assign io_dac_10_payload = _zz_io_dac_10_payload_1;
  assign when_SimpleAwg_l81_11 = (dsp_chans_11_timer != 32'h0);
  assign dsp_chans_11_sample = pulseMems_11_spinal_port1;
  assign io_dac_11_payload = _zz_io_dac_11_payload_1;
  assign when_SimpleAwg_l81_12 = (dsp_chans_12_timer != 32'h0);
  assign dsp_chans_12_sample = pulseMems_12_spinal_port1;
  assign io_dac_12_payload = _zz_io_dac_12_payload_1;
  assign when_SimpleAwg_l81_13 = (dsp_chans_13_timer != 32'h0);
  assign dsp_chans_13_sample = pulseMems_13_spinal_port1;
  assign io_dac_13_payload = _zz_io_dac_13_payload_1;
  assign when_SimpleAwg_l81_14 = (dsp_chans_14_timer != 32'h0);
  assign dsp_chans_14_sample = pulseMems_14_spinal_port1;
  assign io_dac_14_payload = _zz_io_dac_14_payload_1;
  assign when_SimpleAwg_l81_15 = (dsp_chans_15_timer != 32'h0);
  assign dsp_chans_15_sample = pulseMems_15_spinal_port1;
  assign io_dac_15_payload = _zz_io_dac_15_payload_1;
  assign dsp_anyStart = (|{starts_15_ccToggle_io_output_valid,{starts_14_ccToggle_io_output_valid,{starts_13_ccToggle_io_output_valid,{starts_12_ccToggle_io_output_valid,{starts_11_ccToggle_io_output_valid,{starts_10_ccToggle_io_output_valid,{starts_9_ccToggle_io_output_valid,{starts_8_ccToggle_io_output_valid,{starts_7_ccToggle_io_output_valid,{starts_6_ccToggle_io_output_valid,{_zz_dsp_anyStart,_zz_dsp_anyStart_1}}}}}}}}}}});
  assign dsp_recording = (dsp_anyFire && (! dsp_recAddr[10]));
  assign when_SimpleAwg_l113 = (dsp_chans_0_fire && (! dsp_chans_0_fire_regNext_1));
  assign when_SimpleAwg_l113_1 = (dsp_chans_1_fire && (! dsp_chans_1_fire_regNext_1));
  assign when_SimpleAwg_l113_2 = (dsp_chans_2_fire && (! dsp_chans_2_fire_regNext_1));
  assign when_SimpleAwg_l113_3 = (dsp_chans_3_fire && (! dsp_chans_3_fire_regNext_1));
  assign when_SimpleAwg_l113_4 = (dsp_chans_4_fire && (! dsp_chans_4_fire_regNext_1));
  assign when_SimpleAwg_l113_5 = (dsp_chans_5_fire && (! dsp_chans_5_fire_regNext_1));
  assign when_SimpleAwg_l113_6 = (dsp_chans_6_fire && (! dsp_chans_6_fire_regNext_1));
  assign when_SimpleAwg_l113_7 = (dsp_chans_7_fire && (! dsp_chans_7_fire_regNext_1));
  assign io_led = dsp_led;
  assign bufferCC_19_io_dataIn = {dsp_chans_15_fire,{dsp_chans_14_fire,{dsp_chans_13_fire,{dsp_chans_12_fire,{dsp_chans_11_fire,{dsp_chans_10_fire,{dsp_chans_9_fire,{dsp_chans_8_fire,{dsp_chans_7_fire,{dsp_chans_6_fire,{_zz_io_dataIn,_zz_io_dataIn_1}}}}}}}}}}};
  assign starts_0_payload = io_axi_w_payload_data[31 : 0];
  assign starts_1_payload = io_axi_w_payload_data[31 : 0];
  assign starts_2_payload = io_axi_w_payload_data[31 : 0];
  assign starts_3_payload = io_axi_w_payload_data[31 : 0];
  assign starts_4_payload = io_axi_w_payload_data[31 : 0];
  assign starts_5_payload = io_axi_w_payload_data[31 : 0];
  assign starts_6_payload = io_axi_w_payload_data[31 : 0];
  assign starts_7_payload = io_axi_w_payload_data[31 : 0];
  assign starts_8_payload = io_axi_w_payload_data[31 : 0];
  assign starts_9_payload = io_axi_w_payload_data[31 : 0];
  assign starts_10_payload = io_axi_w_payload_data[31 : 0];
  assign starts_11_payload = io_axi_w_payload_data[31 : 0];
  assign starts_12_payload = io_axi_w_payload_data[31 : 0];
  assign starts_13_payload = io_axi_w_payload_data[31 : 0];
  assign starts_14_payload = io_axi_w_payload_data[31 : 0];
  assign starts_15_payload = io_axi_w_payload_data[31 : 0];
  assign _zz_3 = io_axi_w_payload_data[31 : 0];
  assign _zz_8 = io_axi_w_payload_data[31 : 0];
  assign _zz_13 = io_axi_w_payload_data[31 : 0];
  assign _zz_18 = io_axi_w_payload_data[31 : 0];
  assign _zz_23 = io_axi_w_payload_data[31 : 0];
  assign _zz_28 = io_axi_w_payload_data[31 : 0];
  assign _zz_33 = io_axi_w_payload_data[31 : 0];
  assign _zz_38 = io_axi_w_payload_data[31 : 0];
  assign _zz_43 = io_axi_w_payload_data[31 : 0];
  assign _zz_48 = io_axi_w_payload_data[31 : 0];
  assign _zz_53 = io_axi_w_payload_data[31 : 0];
  assign _zz_58 = io_axi_w_payload_data[31 : 0];
  assign _zz_63 = io_axi_w_payload_data[31 : 0];
  assign _zz_68 = io_axi_w_payload_data[31 : 0];
  assign _zz_73 = io_axi_w_payload_data[31 : 0];
  assign _zz_78 = io_axi_w_payload_data[31 : 0];
  assign when_Axi4SlaveFactory_l89 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80100000);
  assign when_Axi4SlaveFactory_l89_1 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80108000);
  assign when_Axi4SlaveFactory_l89_2 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80110000);
  assign when_Axi4SlaveFactory_l89_3 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80118000);
  assign when_Axi4SlaveFactory_l89_4 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80120000);
  assign when_Axi4SlaveFactory_l89_5 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80128000);
  assign when_Axi4SlaveFactory_l89_6 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80130000);
  assign when_Axi4SlaveFactory_l89_7 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80138000);
  assign when_Axi4SlaveFactory_l89_8 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80140000);
  assign when_Axi4SlaveFactory_l89_9 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80148000);
  assign when_Axi4SlaveFactory_l89_10 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80150000);
  assign when_Axi4SlaveFactory_l89_11 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80158000);
  assign when_Axi4SlaveFactory_l89_12 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80160000);
  assign when_Axi4SlaveFactory_l89_13 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80168000);
  assign when_Axi4SlaveFactory_l89_14 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80170000);
  assign when_Axi4SlaveFactory_l89_15 = ((factory_writeAddressMasked & (~ 32'h00007fff)) == 32'h80178000);
  assign when_Axi4SlaveFactory_l107 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80200000);
  assign when_BusSlaveFactory_l709 = (! _zz_when_BusSlaveFactory_l709_3);
  assign when_Axi4SlaveFactory_l107_1 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80202000);
  assign when_BusSlaveFactory_l709_1 = (! _zz_when_BusSlaveFactory_l709_7);
  assign when_Axi4SlaveFactory_l107_2 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80204000);
  assign when_BusSlaveFactory_l709_2 = (! _zz_when_BusSlaveFactory_l709_11);
  assign when_Axi4SlaveFactory_l107_3 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80206000);
  assign when_BusSlaveFactory_l709_3 = (! _zz_when_BusSlaveFactory_l709_15);
  assign when_Axi4SlaveFactory_l107_4 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80208000);
  assign when_BusSlaveFactory_l709_4 = (! _zz_when_BusSlaveFactory_l709_19);
  assign when_Axi4SlaveFactory_l107_5 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h8020a000);
  assign when_BusSlaveFactory_l709_5 = (! _zz_when_BusSlaveFactory_l709_23);
  assign when_Axi4SlaveFactory_l107_6 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h8020c000);
  assign when_BusSlaveFactory_l709_6 = (! _zz_when_BusSlaveFactory_l709_27);
  assign when_Axi4SlaveFactory_l107_7 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h8020e000);
  assign when_BusSlaveFactory_l709_7 = (! _zz_when_BusSlaveFactory_l709_31);
  assign when_Axi4SlaveFactory_l107_8 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80210000);
  assign when_BusSlaveFactory_l709_8 = (! _zz_when_BusSlaveFactory_l709_35);
  assign when_Axi4SlaveFactory_l107_9 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80212000);
  assign when_BusSlaveFactory_l709_9 = (! _zz_when_BusSlaveFactory_l709_39);
  assign when_Axi4SlaveFactory_l107_10 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80214000);
  assign when_BusSlaveFactory_l709_10 = (! _zz_when_BusSlaveFactory_l709_43);
  assign when_Axi4SlaveFactory_l107_11 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80216000);
  assign when_BusSlaveFactory_l709_11 = (! _zz_when_BusSlaveFactory_l709_47);
  assign when_Axi4SlaveFactory_l107_12 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h80218000);
  assign when_BusSlaveFactory_l709_12 = (! _zz_when_BusSlaveFactory_l709_51);
  assign when_Axi4SlaveFactory_l107_13 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h8021a000);
  assign when_BusSlaveFactory_l709_13 = (! _zz_when_BusSlaveFactory_l709_55);
  assign when_Axi4SlaveFactory_l107_14 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h8021c000);
  assign when_BusSlaveFactory_l709_14 = (! _zz_when_BusSlaveFactory_l709_59);
  assign when_Axi4SlaveFactory_l107_15 = ((factory_readAddressMasked & (~ 32'h00001fff)) == 32'h8021e000);
  assign when_BusSlaveFactory_l709_15 = (! _zz_when_BusSlaveFactory_l709_63);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      unburstify_buffer_valid <= 1'b0;
      factory_writeRsp_rValid <= 1'b0;
      unburstify_buffer_valid_1 <= 1'b0;
      unburstify_result_rValid <= 1'b0;
      _zz_when_BusSlaveFactory_l709_2 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_6 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_10 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_14 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_18 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_22 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_26 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_30 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_34 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_38 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_42 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_46 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_50 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_54 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_58 <= 1'b0;
      _zz_when_BusSlaveFactory_l709_62 <= 1'b0;
    end else begin
      if(unburstify_result_ready) begin
        if(unburstify_buffer_last) begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(!unburstify_buffer_valid) begin
        if(when_Axi4Channel_l337) begin
          if(unburstify_result_ready) begin
            unburstify_buffer_valid <= io_axi_aw_valid;
          end
        end
      end
      if(factory_writeRsp_ready) begin
        factory_writeRsp_rValid <= factory_writeRsp_valid;
      end
      if(unburstify_result_ready_1) begin
        if(unburstify_buffer_last_1) begin
          unburstify_buffer_valid_1 <= 1'b0;
        end
      end
      if(!unburstify_buffer_valid_1) begin
        if(when_Axi4Channel_l337_1) begin
          if(unburstify_result_ready_1) begin
            unburstify_buffer_valid_1 <= io_axi_ar_valid;
          end
        end
      end
      if(unburstify_result_ready_1) begin
        unburstify_result_rValid <= unburstify_result_valid_1;
      end
      _zz_when_BusSlaveFactory_l709_2 <= _zz_when_BusSlaveFactory_l709_1;
      _zz_when_BusSlaveFactory_l709_6 <= _zz_when_BusSlaveFactory_l709_5;
      _zz_when_BusSlaveFactory_l709_10 <= _zz_when_BusSlaveFactory_l709_9;
      _zz_when_BusSlaveFactory_l709_14 <= _zz_when_BusSlaveFactory_l709_13;
      _zz_when_BusSlaveFactory_l709_18 <= _zz_when_BusSlaveFactory_l709_17;
      _zz_when_BusSlaveFactory_l709_22 <= _zz_when_BusSlaveFactory_l709_21;
      _zz_when_BusSlaveFactory_l709_26 <= _zz_when_BusSlaveFactory_l709_25;
      _zz_when_BusSlaveFactory_l709_30 <= _zz_when_BusSlaveFactory_l709_29;
      _zz_when_BusSlaveFactory_l709_34 <= _zz_when_BusSlaveFactory_l709_33;
      _zz_when_BusSlaveFactory_l709_38 <= _zz_when_BusSlaveFactory_l709_37;
      _zz_when_BusSlaveFactory_l709_42 <= _zz_when_BusSlaveFactory_l709_41;
      _zz_when_BusSlaveFactory_l709_46 <= _zz_when_BusSlaveFactory_l709_45;
      _zz_when_BusSlaveFactory_l709_50 <= _zz_when_BusSlaveFactory_l709_49;
      _zz_when_BusSlaveFactory_l709_54 <= _zz_when_BusSlaveFactory_l709_53;
      _zz_when_BusSlaveFactory_l709_58 <= _zz_when_BusSlaveFactory_l709_57;
      _zz_when_BusSlaveFactory_l709_62 <= _zz_when_BusSlaveFactory_l709_61;
    end
  end

  always @(posedge clk) begin
    if(unburstify_result_ready) begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(!unburstify_buffer_valid) begin
      if(when_Axi4Channel_l337) begin
        if(unburstify_result_ready) begin
          unburstify_buffer_transaction_addr <= io_axi_aw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_aw_payload_id;
          unburstify_buffer_transaction_region <= io_axi_aw_payload_region;
          unburstify_buffer_transaction_size <= io_axi_aw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_aw_payload_burst;
          unburstify_buffer_transaction_lock <= io_axi_aw_payload_lock;
          unburstify_buffer_transaction_cache <= io_axi_aw_payload_cache;
          unburstify_buffer_transaction_qos <= io_axi_aw_payload_qos;
          unburstify_buffer_transaction_prot <= io_axi_aw_payload_prot;
          unburstify_buffer_beat <= io_axi_aw_payload_len;
          unburstify_buffer_len <= io_axi_aw_payload_len;
        end
      end
    end
    if(factory_writeRsp_ready) begin
      factory_writeRsp_rData_id <= factory_writeRsp_payload_id;
      factory_writeRsp_rData_resp <= factory_writeRsp_payload_resp;
    end
    if(unburstify_result_ready_1) begin
      unburstify_buffer_beat_1 <= (unburstify_buffer_beat_1 - 8'h01);
      unburstify_buffer_transaction_addr_1[11 : 0] <= Axi4Incr_result_1[11 : 0];
    end
    if(!unburstify_buffer_valid_1) begin
      if(when_Axi4Channel_l337_1) begin
        if(unburstify_result_ready_1) begin
          unburstify_buffer_transaction_addr_1 <= io_axi_ar_payload_addr;
          unburstify_buffer_transaction_id_1 <= io_axi_ar_payload_id;
          unburstify_buffer_transaction_region_1 <= io_axi_ar_payload_region;
          unburstify_buffer_transaction_size_1 <= io_axi_ar_payload_size;
          unburstify_buffer_transaction_burst_1 <= io_axi_ar_payload_burst;
          unburstify_buffer_transaction_lock_1 <= io_axi_ar_payload_lock;
          unburstify_buffer_transaction_cache_1 <= io_axi_ar_payload_cache;
          unburstify_buffer_transaction_qos_1 <= io_axi_ar_payload_qos;
          unburstify_buffer_transaction_prot_1 <= io_axi_ar_payload_prot;
          unburstify_buffer_beat_1 <= io_axi_ar_payload_len;
          unburstify_buffer_len_1 <= io_axi_ar_payload_len;
        end
      end
    end
    if(unburstify_result_ready_1) begin
      unburstify_result_rData_last <= unburstify_result_payload_last_1;
      unburstify_result_rData_fragment_addr <= unburstify_result_payload_fragment_addr_1;
      unburstify_result_rData_fragment_id <= unburstify_result_payload_fragment_id_1;
      unburstify_result_rData_fragment_region <= unburstify_result_payload_fragment_region_1;
      unburstify_result_rData_fragment_size <= unburstify_result_payload_fragment_size_1;
      unburstify_result_rData_fragment_burst <= unburstify_result_payload_fragment_burst_1;
      unburstify_result_rData_fragment_lock <= unburstify_result_payload_fragment_lock_1;
      unburstify_result_rData_fragment_cache <= unburstify_result_payload_fragment_cache_1;
      unburstify_result_rData_fragment_qos <= unburstify_result_payload_fragment_qos_1;
      unburstify_result_rData_fragment_prot <= unburstify_result_payload_fragment_prot_1;
    end
  end

  always @(posedge dspClk or posedge dspRst) begin
    if(dspRst) begin
      dsp_chans_0_timer <= 32'h0;
      dsp_chans_0_addr <= 10'h0;
      dsp_chans_0_fire <= 1'b0;
      dsp_chans_1_timer <= 32'h0;
      dsp_chans_1_addr <= 10'h0;
      dsp_chans_1_fire <= 1'b0;
      dsp_chans_2_timer <= 32'h0;
      dsp_chans_2_addr <= 10'h0;
      dsp_chans_2_fire <= 1'b0;
      dsp_chans_3_timer <= 32'h0;
      dsp_chans_3_addr <= 10'h0;
      dsp_chans_3_fire <= 1'b0;
      dsp_chans_4_timer <= 32'h0;
      dsp_chans_4_addr <= 10'h0;
      dsp_chans_4_fire <= 1'b0;
      dsp_chans_5_timer <= 32'h0;
      dsp_chans_5_addr <= 10'h0;
      dsp_chans_5_fire <= 1'b0;
      dsp_chans_6_timer <= 32'h0;
      dsp_chans_6_addr <= 10'h0;
      dsp_chans_6_fire <= 1'b0;
      dsp_chans_7_timer <= 32'h0;
      dsp_chans_7_addr <= 10'h0;
      dsp_chans_7_fire <= 1'b0;
      dsp_chans_8_timer <= 32'h0;
      dsp_chans_8_addr <= 10'h0;
      dsp_chans_8_fire <= 1'b0;
      dsp_chans_9_timer <= 32'h0;
      dsp_chans_9_addr <= 10'h0;
      dsp_chans_9_fire <= 1'b0;
      dsp_chans_10_timer <= 32'h0;
      dsp_chans_10_addr <= 10'h0;
      dsp_chans_10_fire <= 1'b0;
      dsp_chans_11_timer <= 32'h0;
      dsp_chans_11_addr <= 10'h0;
      dsp_chans_11_fire <= 1'b0;
      dsp_chans_12_timer <= 32'h0;
      dsp_chans_12_addr <= 10'h0;
      dsp_chans_12_fire <= 1'b0;
      dsp_chans_13_timer <= 32'h0;
      dsp_chans_13_addr <= 10'h0;
      dsp_chans_13_fire <= 1'b0;
      dsp_chans_14_timer <= 32'h0;
      dsp_chans_14_addr <= 10'h0;
      dsp_chans_14_fire <= 1'b0;
      dsp_chans_15_timer <= 32'h0;
      dsp_chans_15_addr <= 10'h0;
      dsp_chans_15_fire <= 1'b0;
      dsp_anyFire <= 1'b0;
      dsp_recAddr <= 11'h400;
      dsp_recWrite <= 1'b0;
      dsp_led <= 8'h0;
    end else begin
      dsp_chans_0_fire <= (dsp_chans_0_timer != 32'h0);
      if(starts_0_ccToggle_io_output_valid) begin
        dsp_chans_0_timer <= starts_0_ccToggle_io_output_payload;
        dsp_chans_0_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81) begin
          dsp_chans_0_timer <= (dsp_chans_0_timer - 32'h00000001);
        end
      end
      if(dsp_chans_0_fire) begin
        dsp_chans_0_addr <= (dsp_chans_0_addr + 10'h001);
      end
      dsp_chans_1_fire <= (dsp_chans_1_timer != 32'h0);
      if(starts_1_ccToggle_io_output_valid) begin
        dsp_chans_1_timer <= starts_1_ccToggle_io_output_payload;
        dsp_chans_1_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_1) begin
          dsp_chans_1_timer <= (dsp_chans_1_timer - 32'h00000001);
        end
      end
      if(dsp_chans_1_fire) begin
        dsp_chans_1_addr <= (dsp_chans_1_addr + 10'h001);
      end
      dsp_chans_2_fire <= (dsp_chans_2_timer != 32'h0);
      if(starts_2_ccToggle_io_output_valid) begin
        dsp_chans_2_timer <= starts_2_ccToggle_io_output_payload;
        dsp_chans_2_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_2) begin
          dsp_chans_2_timer <= (dsp_chans_2_timer - 32'h00000001);
        end
      end
      if(dsp_chans_2_fire) begin
        dsp_chans_2_addr <= (dsp_chans_2_addr + 10'h001);
      end
      dsp_chans_3_fire <= (dsp_chans_3_timer != 32'h0);
      if(starts_3_ccToggle_io_output_valid) begin
        dsp_chans_3_timer <= starts_3_ccToggle_io_output_payload;
        dsp_chans_3_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_3) begin
          dsp_chans_3_timer <= (dsp_chans_3_timer - 32'h00000001);
        end
      end
      if(dsp_chans_3_fire) begin
        dsp_chans_3_addr <= (dsp_chans_3_addr + 10'h001);
      end
      dsp_chans_4_fire <= (dsp_chans_4_timer != 32'h0);
      if(starts_4_ccToggle_io_output_valid) begin
        dsp_chans_4_timer <= starts_4_ccToggle_io_output_payload;
        dsp_chans_4_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_4) begin
          dsp_chans_4_timer <= (dsp_chans_4_timer - 32'h00000001);
        end
      end
      if(dsp_chans_4_fire) begin
        dsp_chans_4_addr <= (dsp_chans_4_addr + 10'h001);
      end
      dsp_chans_5_fire <= (dsp_chans_5_timer != 32'h0);
      if(starts_5_ccToggle_io_output_valid) begin
        dsp_chans_5_timer <= starts_5_ccToggle_io_output_payload;
        dsp_chans_5_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_5) begin
          dsp_chans_5_timer <= (dsp_chans_5_timer - 32'h00000001);
        end
      end
      if(dsp_chans_5_fire) begin
        dsp_chans_5_addr <= (dsp_chans_5_addr + 10'h001);
      end
      dsp_chans_6_fire <= (dsp_chans_6_timer != 32'h0);
      if(starts_6_ccToggle_io_output_valid) begin
        dsp_chans_6_timer <= starts_6_ccToggle_io_output_payload;
        dsp_chans_6_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_6) begin
          dsp_chans_6_timer <= (dsp_chans_6_timer - 32'h00000001);
        end
      end
      if(dsp_chans_6_fire) begin
        dsp_chans_6_addr <= (dsp_chans_6_addr + 10'h001);
      end
      dsp_chans_7_fire <= (dsp_chans_7_timer != 32'h0);
      if(starts_7_ccToggle_io_output_valid) begin
        dsp_chans_7_timer <= starts_7_ccToggle_io_output_payload;
        dsp_chans_7_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_7) begin
          dsp_chans_7_timer <= (dsp_chans_7_timer - 32'h00000001);
        end
      end
      if(dsp_chans_7_fire) begin
        dsp_chans_7_addr <= (dsp_chans_7_addr + 10'h001);
      end
      dsp_chans_8_fire <= (dsp_chans_8_timer != 32'h0);
      if(starts_8_ccToggle_io_output_valid) begin
        dsp_chans_8_timer <= starts_8_ccToggle_io_output_payload;
        dsp_chans_8_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_8) begin
          dsp_chans_8_timer <= (dsp_chans_8_timer - 32'h00000001);
        end
      end
      if(dsp_chans_8_fire) begin
        dsp_chans_8_addr <= (dsp_chans_8_addr + 10'h001);
      end
      dsp_chans_9_fire <= (dsp_chans_9_timer != 32'h0);
      if(starts_9_ccToggle_io_output_valid) begin
        dsp_chans_9_timer <= starts_9_ccToggle_io_output_payload;
        dsp_chans_9_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_9) begin
          dsp_chans_9_timer <= (dsp_chans_9_timer - 32'h00000001);
        end
      end
      if(dsp_chans_9_fire) begin
        dsp_chans_9_addr <= (dsp_chans_9_addr + 10'h001);
      end
      dsp_chans_10_fire <= (dsp_chans_10_timer != 32'h0);
      if(starts_10_ccToggle_io_output_valid) begin
        dsp_chans_10_timer <= starts_10_ccToggle_io_output_payload;
        dsp_chans_10_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_10) begin
          dsp_chans_10_timer <= (dsp_chans_10_timer - 32'h00000001);
        end
      end
      if(dsp_chans_10_fire) begin
        dsp_chans_10_addr <= (dsp_chans_10_addr + 10'h001);
      end
      dsp_chans_11_fire <= (dsp_chans_11_timer != 32'h0);
      if(starts_11_ccToggle_io_output_valid) begin
        dsp_chans_11_timer <= starts_11_ccToggle_io_output_payload;
        dsp_chans_11_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_11) begin
          dsp_chans_11_timer <= (dsp_chans_11_timer - 32'h00000001);
        end
      end
      if(dsp_chans_11_fire) begin
        dsp_chans_11_addr <= (dsp_chans_11_addr + 10'h001);
      end
      dsp_chans_12_fire <= (dsp_chans_12_timer != 32'h0);
      if(starts_12_ccToggle_io_output_valid) begin
        dsp_chans_12_timer <= starts_12_ccToggle_io_output_payload;
        dsp_chans_12_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_12) begin
          dsp_chans_12_timer <= (dsp_chans_12_timer - 32'h00000001);
        end
      end
      if(dsp_chans_12_fire) begin
        dsp_chans_12_addr <= (dsp_chans_12_addr + 10'h001);
      end
      dsp_chans_13_fire <= (dsp_chans_13_timer != 32'h0);
      if(starts_13_ccToggle_io_output_valid) begin
        dsp_chans_13_timer <= starts_13_ccToggle_io_output_payload;
        dsp_chans_13_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_13) begin
          dsp_chans_13_timer <= (dsp_chans_13_timer - 32'h00000001);
        end
      end
      if(dsp_chans_13_fire) begin
        dsp_chans_13_addr <= (dsp_chans_13_addr + 10'h001);
      end
      dsp_chans_14_fire <= (dsp_chans_14_timer != 32'h0);
      if(starts_14_ccToggle_io_output_valid) begin
        dsp_chans_14_timer <= starts_14_ccToggle_io_output_payload;
        dsp_chans_14_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_14) begin
          dsp_chans_14_timer <= (dsp_chans_14_timer - 32'h00000001);
        end
      end
      if(dsp_chans_14_fire) begin
        dsp_chans_14_addr <= (dsp_chans_14_addr + 10'h001);
      end
      dsp_chans_15_fire <= (dsp_chans_15_timer != 32'h0);
      if(starts_15_ccToggle_io_output_valid) begin
        dsp_chans_15_timer <= starts_15_ccToggle_io_output_payload;
        dsp_chans_15_addr <= 10'h0;
      end else begin
        if(when_SimpleAwg_l81_15) begin
          dsp_chans_15_timer <= (dsp_chans_15_timer - 32'h00000001);
        end
      end
      if(dsp_chans_15_fire) begin
        dsp_chans_15_addr <= (dsp_chans_15_addr + 10'h001);
      end
      dsp_anyFire <= (|{dsp_chans_15_fire,{dsp_chans_14_fire,{dsp_chans_13_fire,{dsp_chans_12_fire,{dsp_chans_11_fire,{dsp_chans_10_fire,{dsp_chans_9_fire,{dsp_chans_8_fire,{dsp_chans_7_fire,{dsp_chans_6_fire,{_zz_dsp_anyFire,_zz_dsp_anyFire_1}}}}}}}}}}});
      if(dsp_anyStart) begin
        dsp_recAddr <= 11'h0;
      end else begin
        if(dsp_recording) begin
          dsp_recAddr <= (dsp_recAddr + 11'h001);
        end
      end
      dsp_recWrite <= dsp_recording;
      if(when_SimpleAwg_l113) begin
        dsp_led[0] <= (! dsp_led[0]);
      end
      if(when_SimpleAwg_l113_1) begin
        dsp_led[1] <= (! dsp_led[1]);
      end
      if(when_SimpleAwg_l113_2) begin
        dsp_led[2] <= (! dsp_led[2]);
      end
      if(when_SimpleAwg_l113_3) begin
        dsp_led[3] <= (! dsp_led[3]);
      end
      if(when_SimpleAwg_l113_4) begin
        dsp_led[4] <= (! dsp_led[4]);
      end
      if(when_SimpleAwg_l113_5) begin
        dsp_led[5] <= (! dsp_led[5]);
      end
      if(when_SimpleAwg_l113_6) begin
        dsp_led[6] <= (! dsp_led[6]);
      end
      if(when_SimpleAwg_l113_7) begin
        dsp_led[7] <= (! dsp_led[7]);
      end
    end
  end

  always @(posedge dspClk) begin
    dsp_chans_0_fire_regNext <= dsp_chans_0_fire;
    _zz_io_dac_0_payload <= (dsp_chans_0_fire_regNext ? dsp_chans_0_sample : 256'h0);
    _zz_io_dac_0_payload_1 <= _zz_io_dac_0_payload;
    dsp_chans_1_fire_regNext <= dsp_chans_1_fire;
    _zz_io_dac_1_payload <= (dsp_chans_1_fire_regNext ? dsp_chans_1_sample : 256'h0);
    _zz_io_dac_1_payload_1 <= _zz_io_dac_1_payload;
    dsp_chans_2_fire_regNext <= dsp_chans_2_fire;
    _zz_io_dac_2_payload <= (dsp_chans_2_fire_regNext ? dsp_chans_2_sample : 256'h0);
    _zz_io_dac_2_payload_1 <= _zz_io_dac_2_payload;
    dsp_chans_3_fire_regNext <= dsp_chans_3_fire;
    _zz_io_dac_3_payload <= (dsp_chans_3_fire_regNext ? dsp_chans_3_sample : 256'h0);
    _zz_io_dac_3_payload_1 <= _zz_io_dac_3_payload;
    dsp_chans_4_fire_regNext <= dsp_chans_4_fire;
    _zz_io_dac_4_payload <= (dsp_chans_4_fire_regNext ? dsp_chans_4_sample : 256'h0);
    _zz_io_dac_4_payload_1 <= _zz_io_dac_4_payload;
    dsp_chans_5_fire_regNext <= dsp_chans_5_fire;
    _zz_io_dac_5_payload <= (dsp_chans_5_fire_regNext ? dsp_chans_5_sample : 256'h0);
    _zz_io_dac_5_payload_1 <= _zz_io_dac_5_payload;
    dsp_chans_6_fire_regNext <= dsp_chans_6_fire;
    _zz_io_dac_6_payload <= (dsp_chans_6_fire_regNext ? dsp_chans_6_sample : 256'h0);
    _zz_io_dac_6_payload_1 <= _zz_io_dac_6_payload;
    dsp_chans_7_fire_regNext <= dsp_chans_7_fire;
    _zz_io_dac_7_payload <= (dsp_chans_7_fire_regNext ? dsp_chans_7_sample : 256'h0);
    _zz_io_dac_7_payload_1 <= _zz_io_dac_7_payload;
    dsp_chans_8_fire_regNext <= dsp_chans_8_fire;
    _zz_io_dac_8_payload <= (dsp_chans_8_fire_regNext ? dsp_chans_8_sample : 256'h0);
    _zz_io_dac_8_payload_1 <= _zz_io_dac_8_payload;
    dsp_chans_9_fire_regNext <= dsp_chans_9_fire;
    _zz_io_dac_9_payload <= (dsp_chans_9_fire_regNext ? dsp_chans_9_sample : 256'h0);
    _zz_io_dac_9_payload_1 <= _zz_io_dac_9_payload;
    dsp_chans_10_fire_regNext <= dsp_chans_10_fire;
    _zz_io_dac_10_payload <= (dsp_chans_10_fire_regNext ? dsp_chans_10_sample : 256'h0);
    _zz_io_dac_10_payload_1 <= _zz_io_dac_10_payload;
    dsp_chans_11_fire_regNext <= dsp_chans_11_fire;
    _zz_io_dac_11_payload <= (dsp_chans_11_fire_regNext ? dsp_chans_11_sample : 256'h0);
    _zz_io_dac_11_payload_1 <= _zz_io_dac_11_payload;
    dsp_chans_12_fire_regNext <= dsp_chans_12_fire;
    _zz_io_dac_12_payload <= (dsp_chans_12_fire_regNext ? dsp_chans_12_sample : 256'h0);
    _zz_io_dac_12_payload_1 <= _zz_io_dac_12_payload;
    dsp_chans_13_fire_regNext <= dsp_chans_13_fire;
    _zz_io_dac_13_payload <= (dsp_chans_13_fire_regNext ? dsp_chans_13_sample : 256'h0);
    _zz_io_dac_13_payload_1 <= _zz_io_dac_13_payload;
    dsp_chans_14_fire_regNext <= dsp_chans_14_fire;
    _zz_io_dac_14_payload <= (dsp_chans_14_fire_regNext ? dsp_chans_14_sample : 256'h0);
    _zz_io_dac_14_payload_1 <= _zz_io_dac_14_payload;
    dsp_chans_15_fire_regNext <= dsp_chans_15_fire;
    _zz_io_dac_15_payload <= (dsp_chans_15_fire_regNext ? dsp_chans_15_sample : 256'h0);
    _zz_io_dac_15_payload_1 <= _zz_io_dac_15_payload;
    dsp_recWrAddr <= dsp_recAddr[9 : 0];
    io_adc_0_payload_regNext <= io_adc_0_payload;
    io_adc_1_payload_regNext <= io_adc_1_payload;
    io_adc_2_payload_regNext <= io_adc_2_payload;
    io_adc_3_payload_regNext <= io_adc_3_payload;
    io_adc_4_payload_regNext <= io_adc_4_payload;
    io_adc_5_payload_regNext <= io_adc_5_payload;
    io_adc_6_payload_regNext <= io_adc_6_payload;
    io_adc_7_payload_regNext <= io_adc_7_payload;
    io_adc_8_payload_regNext <= io_adc_8_payload;
    io_adc_9_payload_regNext <= io_adc_9_payload;
    io_adc_10_payload_regNext <= io_adc_10_payload;
    io_adc_11_payload_regNext <= io_adc_11_payload;
    io_adc_12_payload_regNext <= io_adc_12_payload;
    io_adc_13_payload_regNext <= io_adc_13_payload;
    io_adc_14_payload_regNext <= io_adc_14_payload;
    io_adc_15_payload_regNext <= io_adc_15_payload;
    dsp_chans_0_fire_regNext_1 <= dsp_chans_0_fire;
    dsp_chans_1_fire_regNext_1 <= dsp_chans_1_fire;
    dsp_chans_2_fire_regNext_1 <= dsp_chans_2_fire;
    dsp_chans_3_fire_regNext_1 <= dsp_chans_3_fire;
    dsp_chans_4_fire_regNext_1 <= dsp_chans_4_fire;
    dsp_chans_5_fire_regNext_1 <= dsp_chans_5_fire;
    dsp_chans_6_fire_regNext_1 <= dsp_chans_6_fire;
    dsp_chans_7_fire_regNext_1 <= dsp_chans_7_fire;
  end


endmodule

module BufferCC_18 (
  input  wire [15:0]   io_dataIn,
  output wire [15:0]   io_dataOut,
  input  wire          clk,
  input  wire          reset
);

  (* async_reg = "true" *) reg        [15:0]   buffers_0;
  (* async_reg = "true" *) reg        [15:0]   buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module BufferCC_17 (
  input  wire [10:0]   io_dataIn,
  output wire [10:0]   io_dataOut,
  input  wire          clk,
  input  wire          reset
);

  (* async_reg = "true" *) reg        [10:0]   buffers_0;
  (* async_reg = "true" *) reg        [10:0]   buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

//FlowCCByToggle_15 replaced by FlowCCByToggle_1

//FlowCCByToggle_14 replaced by FlowCCByToggle_1

//FlowCCByToggle_13 replaced by FlowCCByToggle_1

//FlowCCByToggle_12 replaced by FlowCCByToggle_1

//FlowCCByToggle_11 replaced by FlowCCByToggle_1

//FlowCCByToggle_10 replaced by FlowCCByToggle_1

//FlowCCByToggle_9 replaced by FlowCCByToggle_1

//FlowCCByToggle_8 replaced by FlowCCByToggle_1

//FlowCCByToggle_7 replaced by FlowCCByToggle_1

//FlowCCByToggle_6 replaced by FlowCCByToggle_1

//FlowCCByToggle_5 replaced by FlowCCByToggle_1

//FlowCCByToggle_4 replaced by FlowCCByToggle_1

//FlowCCByToggle_3 replaced by FlowCCByToggle_1

//FlowCCByToggle_2 replaced by FlowCCByToggle_1

module FlowCCByToggle_1 (
  input  wire          io_input_valid,
  input  wire [31:0]   io_input_payload,
  output wire          io_output_valid,
  output wire [31:0]   io_output_payload,
  input  wire          clk,
  input  wire          reset,
  input  wire          dspClk,
  input  wire          reset_synchronized_1
);

  wire                inputArea_target_buffercc_io_dataOut;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 inputArea_target;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [31:0]   inputArea_data;
  wire                outputArea_target;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire       [31:0]   outputArea_flow_payload;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 outputArea_flow_m2sPipe_valid;
  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [31:0]   outputArea_flow_m2sPipe_payload;

  (* keep_hierarchy = "TRUE" *) BufferCC_2 inputArea_target_buffercc (
    .io_dataIn            (inputArea_target                    ), //i
    .io_dataOut           (inputArea_target_buffercc_io_dataOut), //o
    .dspClk               (dspClk                              ), //i
    .reset_synchronized_1 (reset_synchronized_1                )  //i
  );
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload = inputArea_data;
  assign io_output_valid = outputArea_flow_m2sPipe_valid;
  assign io_output_payload = outputArea_flow_m2sPipe_payload;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      inputArea_target <= 1'b0;
    end else begin
      if(io_input_valid) begin
        inputArea_target <= (! inputArea_target);
      end
    end
  end

  always @(posedge clk) begin
    if(io_input_valid) begin
      inputArea_data <= io_input_payload;
    end
  end

  always @(posedge dspClk or posedge reset_synchronized_1) begin
    if(reset_synchronized_1) begin
      outputArea_flow_m2sPipe_valid <= 1'b0;
      outputArea_hit <= 1'b0;
    end else begin
      outputArea_hit <= outputArea_target;
      outputArea_flow_m2sPipe_valid <= outputArea_flow_valid;
    end
  end

  always @(posedge dspClk) begin
    if(outputArea_flow_valid) begin
      outputArea_flow_m2sPipe_payload <= outputArea_flow_payload;
    end
  end


endmodule

module FlowCCByToggle (
  input  wire          io_input_valid,
  input  wire [31:0]   io_input_payload,
  output wire          io_output_valid,
  output wire [31:0]   io_output_payload,
  input  wire          clk,
  input  wire          reset,
  input  wire          dspClk,
  output wire          reset_synchronized_1
);

  wire                reset_asyncAssertSyncDeassert_buffercc_io_dataOut;
  wire                inputArea_target_buffercc_io_dataOut;
  wire                reset_asyncAssertSyncDeassert;
  wire                reset_synchronized;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 inputArea_target;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [31:0]   inputArea_data;
  wire                outputArea_target;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire       [31:0]   outputArea_flow_payload;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 outputArea_flow_m2sPipe_valid;
  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [31:0]   outputArea_flow_m2sPipe_payload;

  (* keep_hierarchy = "TRUE" *) BufferCC reset_asyncAssertSyncDeassert_buffercc (
    .io_dataIn  (reset_asyncAssertSyncDeassert                    ), //i
    .io_dataOut (reset_asyncAssertSyncDeassert_buffercc_io_dataOut), //o
    .dspClk     (dspClk                                           ), //i
    .reset      (reset                                            )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_1 inputArea_target_buffercc (
    .io_dataIn          (inputArea_target                    ), //i
    .io_dataOut         (inputArea_target_buffercc_io_dataOut), //o
    .dspClk             (dspClk                              ), //i
    .reset_synchronized (reset_synchronized                  )  //i
  );
  assign reset_asyncAssertSyncDeassert = (1'b0 ^ 1'b0);
  assign reset_synchronized = reset_asyncAssertSyncDeassert_buffercc_io_dataOut;
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload = inputArea_data;
  assign io_output_valid = outputArea_flow_m2sPipe_valid;
  assign io_output_payload = outputArea_flow_m2sPipe_payload;
  assign reset_synchronized_1 = reset_synchronized;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      inputArea_target <= 1'b0;
    end else begin
      if(io_input_valid) begin
        inputArea_target <= (! inputArea_target);
      end
    end
  end

  always @(posedge clk) begin
    if(io_input_valid) begin
      inputArea_data <= io_input_payload;
    end
  end

  always @(posedge dspClk or posedge reset_synchronized) begin
    if(reset_synchronized) begin
      outputArea_flow_m2sPipe_valid <= 1'b0;
      outputArea_hit <= 1'b0;
    end else begin
      outputArea_hit <= outputArea_target;
      outputArea_flow_m2sPipe_valid <= outputArea_flow_valid;
    end
  end

  always @(posedge dspClk) begin
    if(outputArea_flow_valid) begin
      outputArea_flow_m2sPipe_payload <= outputArea_flow_payload;
    end
  end


endmodule

//BufferCC_16 replaced by BufferCC_2

//BufferCC_15 replaced by BufferCC_2

//BufferCC_14 replaced by BufferCC_2

//BufferCC_13 replaced by BufferCC_2

//BufferCC_12 replaced by BufferCC_2

//BufferCC_11 replaced by BufferCC_2

//BufferCC_10 replaced by BufferCC_2

//BufferCC_9 replaced by BufferCC_2

//BufferCC_8 replaced by BufferCC_2

//BufferCC_7 replaced by BufferCC_2

//BufferCC_6 replaced by BufferCC_2

//BufferCC_5 replaced by BufferCC_2

//BufferCC_4 replaced by BufferCC_2

//BufferCC_3 replaced by BufferCC_2

module BufferCC_2 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          dspClk,
  input  wire          reset_synchronized_1
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 buffers_0;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" , async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge dspClk or posedge reset_synchronized_1) begin
    if(reset_synchronized_1) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          dspClk,
  input  wire          reset_synchronized
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg                 buffers_0;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" , async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge dspClk or posedge reset_synchronized) begin
    if(reset_synchronized) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          dspClk,
  input  wire          reset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  initial begin
  `ifndef SYNTHESIS
    buffers_1 = 1'b0;
  `endif
  end

  assign io_dataOut = buffers_1;
  always @(posedge dspClk or posedge reset) begin
    if(reset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
