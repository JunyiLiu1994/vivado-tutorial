// Generator : SpinalHDL v1.14.2    git head : 78f29dc66110fc099a777992b6daa2f803ab445e
// Component : AxiLed

`timescale 1ns/1ps

module AxiLed (
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
  output wire [7:0]    io_ledR,
  output wire [7:0]    io_ledG,
  output wire [7:0]    io_ledB,
  input  wire [7:0]    io_dipSw,
  input  wire [4:0]    io_btn,
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" , X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET reset" *) input  wire          clk,
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" , X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *) input  wire          reset
);

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
  wire                factory_readErrorFlag;
  wire                factory_writeErrorFlag;
  wire                factory_readHaltRequest;
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
  reg        [7:0]    io_ledR_driver;
  reg        [7:0]    io_ledG_driver;
  reg        [7:0]    io_ledB_driver;
  wire                when_BusSlaveFactory_l1071;
  wire                when_BusSlaveFactory_l1071_1;
  wire                when_BusSlaveFactory_l1071_2;

  assign _zz_Axi4Incr_alignMask = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_Axi4Incr_baseIncr = {9'd0, Axi4Incr_sizeValue};
  assign _zz_Axi4Incr_wrapCase_2 = {1'd0, Axi4Incr_validSize};
  assign _zz_Axi4Incr_wrapCase_3 = {1'd0, _zz_Axi4Incr_wrapCase};
  assign _zz_Axi4Incr_alignMask_1 = {(2'b01 < Axi4Incr_validSize_1),(2'b00 < Axi4Incr_validSize_1)};
  assign _zz_Axi4Incr_baseIncr_1 = {9'd0, Axi4Incr_sizeValue_1};
  assign _zz_Axi4Incr_wrapCase_1_1 = {1'd0, Axi4Incr_validSize_1};
  assign _zz_Axi4Incr_wrapCase_1_2 = {1'd0, _zz_Axi4Incr_wrapCase_1};
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

  assign factory_readErrorFlag = 1'b0;
  assign factory_writeErrorFlag = 1'b0;
  assign factory_readHaltRequest = 1'b0;
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
      32'h80000000 : begin
        factory_readRsp_data[7 : 0] = io_ledR_driver;
      end
      32'h80000004 : begin
        factory_readRsp_data[7 : 0] = io_ledG_driver;
      end
      32'h80000008 : begin
        factory_readRsp_data[7 : 0] = io_ledB_driver;
      end
      32'h8000000c : begin
        factory_readRsp_data[7 : 0] = io_dipSw;
      end
      32'h80000010 : begin
        factory_readRsp_data[4 : 0] = io_btn;
      end
      default : begin
      end
    endcase
  end

  assign factory_readRsp_last = factory_readDataStage_payload_last;
  assign factory_readRsp_id = factory_readDataStage_payload_fragment_id;
  assign factory_readOccur = (io_axi_r_valid && io_axi_r_ready);
  assign factory_readAddressMasked = (factory_readDataStage_payload_fragment_addr & (~ 32'h00000003));
  assign factory_writeAddressMasked = (unburstify_result_payload_fragment_addr & (~ 32'h00000003));
  assign io_ledR = io_ledR_driver;
  assign io_ledG = io_ledG_driver;
  assign io_ledB = io_ledB_driver;
  assign when_BusSlaveFactory_l1071 = io_axi_w_payload_strb[0];
  assign when_BusSlaveFactory_l1071_1 = io_axi_w_payload_strb[0];
  assign when_BusSlaveFactory_l1071_2 = io_axi_w_payload_strb[0];
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      unburstify_buffer_valid <= 1'b0;
      factory_writeRsp_rValid <= 1'b0;
      unburstify_buffer_valid_1 <= 1'b0;
      unburstify_result_rValid <= 1'b0;
      io_ledR_driver <= 8'h0;
      io_ledG_driver <= 8'h0;
      io_ledB_driver <= 8'h0;
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
      case(factory_writeAddressMasked)
        32'h80000000 : begin
          if(factory_writeOccur) begin
            if(when_BusSlaveFactory_l1071) begin
              io_ledR_driver[7 : 0] <= io_axi_w_payload_data[7 : 0];
            end
          end
        end
        32'h80000004 : begin
          if(factory_writeOccur) begin
            if(when_BusSlaveFactory_l1071_1) begin
              io_ledG_driver[7 : 0] <= io_axi_w_payload_data[7 : 0];
            end
          end
        end
        32'h80000008 : begin
          if(factory_writeOccur) begin
            if(when_BusSlaveFactory_l1071_2) begin
              io_ledB_driver[7 : 0] <= io_axi_w_payload_data[7 : 0];
            end
          end
        end
        default : begin
        end
      endcase
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


endmodule
