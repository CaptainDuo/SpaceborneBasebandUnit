// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Sep  7 14:13:20 2023
// Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86183/Desktop/Microblaze_xzjddy/Microblaze_xz_1.4/Microblaze_xz/Microblaze_xz.srcs/sources_1/bd/Microblaze_xz/ip/Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0/Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_sim_netlist.v
// Design      : Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1927-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0,AXI4_ADI_SPI_7_8BIT_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXI4_ADI_SPI_7_8BIT_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0
   (user_wr_vild,
    user_rd_vild,
    rst_spi_pin,
    scb,
    sclk,
    sdio,
    dir,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output user_wr_vild;
  output user_rd_vild;
  output rst_spi_pin;
  output scb;
  output sclk;
  inout sdio;
  output dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 7, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Microblaze_xz_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Microblaze_xz_Clk" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire dir;
  wire rst_spi_pin;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scb;
  wire sclk;
  wire sdio;
  wire user_rd_vild;
  wire user_wr_vild;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_AXI4_ADI_SPI_7_8BIT_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .dir(dir),
        .rst_spi_pin(rst_spi_pin),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scb(scb),
        .sclk(sclk),
        .sdio(sdio),
        .user_rd_vild(user_rd_vild),
        .user_wr_vild(user_wr_vild));
endmodule

(* ORIG_REF_NAME = "AXI4_ADI_SPI_7_8BIT_v1_0" *) 
module Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_AXI4_ADI_SPI_7_8BIT_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    dir,
    rst_spi_pin,
    scb,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    user_rd_vild,
    sclk,
    s00_axi_bvalid,
    user_wr_vild,
    sdio,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output dir;
  output rst_spi_pin;
  output scb;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output user_rd_vild;
  output sclk;
  output s00_axi_bvalid;
  output user_wr_vild;
  inout sdio;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire dir;
  wire rst_spi_pin;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scb;
  wire sclk;
  wire sdio;
  wire user_rd_vild;
  wire user_wr_vild;

  Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_AXI4_ADI_SPI_7_8BIT_v1_0_S00_AXI AXI4_ADI_SPI_7_8BIT_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .dir(dir),
        .rst_spi_pin(rst_spi_pin),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scb(scb),
        .sclk(sclk),
        .sdio(sdio),
        .user_rd_vild(user_rd_vild),
        .user_wr_vild(user_wr_vild));
endmodule

(* ORIG_REF_NAME = "AXI4_ADI_SPI_7_8BIT_v1_0_S00_AXI" *) 
module Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_AXI4_ADI_SPI_7_8BIT_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    dir,
    rst_spi_pin,
    scb,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    user_rd_vild,
    sclk,
    s00_axi_bvalid,
    user_wr_vild,
    sdio,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output dir;
  output rst_spi_pin;
  output scb;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output user_rd_vild;
  output sclk;
  output s00_axi_bvalid;
  output user_wr_vild;
  inout sdio;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire adi_spi_driver_7_8bit_inst_n_1;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire [4:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire dir;
  wire [31:7]p_1_in;
  wire [31:0]rd_cmd_ff0;
  wire [31:0]rd_cmd_ff1;
  wire [31:0]reg_data_out;
  wire rst_spi_pin;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scb;
  wire sclk;
  wire sdio;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire user_rd_vild;
  wire user_wr_vild;
  wire [31:0]wr_cmd_ff0;
  wire [31:0]wr_cmd_ff1;

  Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_adi_spi_driver_7_8bit adi_spi_driver_7_8bit_inst
       (.D(reg_data_out[7:0]),
        .Q(rd_cmd_ff1),
        .dir(dir),
        .\rd_cmd_ff0_reg[31] (rd_cmd_ff0),
        .rst_spi_pin(rst_spi_pin),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scb(scb),
        .sclk(sclk),
        .sdio(sdio),
        .sel0(sel0),
        .\slv_reg0_reg[6] (slv_reg0[6:0]),
        .\slv_reg1_reg[0] (\axi_rdata[0]_i_2_n_0 ),
        .\slv_reg1_reg[1] (\axi_rdata[1]_i_2_n_0 ),
        .\slv_reg1_reg[2] (\axi_rdata[2]_i_2_n_0 ),
        .\slv_reg1_reg[3] (\axi_rdata[3]_i_2_n_0 ),
        .\slv_reg1_reg[4] (\axi_rdata[4]_i_2_n_0 ),
        .\slv_reg1_reg[5] (\axi_rdata[5]_i_2_n_0 ),
        .\slv_reg1_reg[6] (\axi_rdata[6]_i_2_n_0 ),
        .\slv_reg1_reg[7] (\axi_rdata[7]_i_2_n_0 ),
        .\slv_reg1_reg[7]_0 (slv_reg1[7:0]),
        .\slv_reg3_reg[6] (slv_reg3[6:0]),
        .\slv_reg4_reg[7] (slv_reg4[7:0]),
        .user_rd_vild(user_rd_vild),
        .user_wr_vild(user_wr_vild),
        .user_wr_vild_reg_0(adi_spi_driver_7_8bit_inst_n_1),
        .\wr_cmd_ff0_reg[31] (wr_cmd_ff0),
        .\wr_cmd_ff1_reg[31] (wr_cmd_ff1));
  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(adi_spi_driver_7_8bit_inst_n_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(axi_awaddr[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg1[0]),
        .I1(slv_reg3[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[0]),
        .I5(slv_reg2[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg4[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg1[10]),
        .I1(slv_reg3[10]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[10]),
        .I5(slv_reg2[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg4[11]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg1[11]),
        .I1(slv_reg3[11]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[11]),
        .I5(slv_reg2[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg4[12]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg1[12]),
        .I1(slv_reg3[12]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[12]),
        .I5(slv_reg2[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg4[13]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg1[13]),
        .I1(slv_reg3[13]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[13]),
        .I5(slv_reg2[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg4[14]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg1[14]),
        .I1(slv_reg3[14]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[14]),
        .I5(slv_reg2[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg4[15]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg1[15]),
        .I1(slv_reg3[15]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[15]),
        .I5(slv_reg2[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg4[16]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[16]_i_2_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg1[16]),
        .I1(slv_reg3[16]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[16]),
        .I5(slv_reg2[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg4[17]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg1[17]),
        .I1(slv_reg3[17]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[17]),
        .I5(slv_reg2[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg4[18]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg1[18]),
        .I1(slv_reg3[18]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[18]),
        .I5(slv_reg2[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg4[19]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg1[19]),
        .I1(slv_reg3[19]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[19]),
        .I5(slv_reg2[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg1[1]),
        .I1(slv_reg3[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[1]),
        .I5(slv_reg2[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg4[20]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[20]_i_2_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg1[20]),
        .I1(slv_reg3[20]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[20]),
        .I5(slv_reg2[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg4[21]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[21]_i_2_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg1[21]),
        .I1(slv_reg3[21]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[21]),
        .I5(slv_reg2[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg4[22]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg1[22]),
        .I1(slv_reg3[22]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[22]),
        .I5(slv_reg2[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg4[23]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[23]_i_2_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg1[23]),
        .I1(slv_reg3[23]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[23]),
        .I5(slv_reg2[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg4[24]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg1[24]),
        .I1(slv_reg3[24]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[24]),
        .I5(slv_reg2[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg4[25]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg1[25]),
        .I1(slv_reg3[25]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[25]),
        .I5(slv_reg2[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg4[26]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[26]_i_2_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg1[26]),
        .I1(slv_reg3[26]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[26]),
        .I5(slv_reg2[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg4[27]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[27]_i_2_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg1[27]),
        .I1(slv_reg3[27]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[27]),
        .I5(slv_reg2[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg4[28]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg1[28]),
        .I1(slv_reg3[28]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[28]),
        .I5(slv_reg2[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg4[29]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[29]_i_2_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg1[29]),
        .I1(slv_reg3[29]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[29]),
        .I5(slv_reg2[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg1[2]),
        .I1(slv_reg3[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[2]),
        .I5(slv_reg2[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg4[30]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[30]_i_2_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg1[30]),
        .I1(slv_reg3[30]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[30]),
        .I5(slv_reg2[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg4[31]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg3[31]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[31]),
        .I5(slv_reg2[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg1[3]),
        .I1(slv_reg3[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[3]),
        .I5(slv_reg2[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg1[4]),
        .I1(slv_reg3[4]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[4]),
        .I5(slv_reg2[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg1[5]),
        .I1(slv_reg3[5]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[5]),
        .I5(slv_reg2[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg1[6]),
        .I1(slv_reg3[6]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[6]),
        .I5(slv_reg2[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg1[7]),
        .I1(slv_reg3[7]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[7]),
        .I5(slv_reg2[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg4[8]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg1[8]),
        .I1(slv_reg3[8]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[8]),
        .I5(slv_reg2[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg4[9]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg1[9]),
        .I1(slv_reg3[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[9]),
        .I5(slv_reg2[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDCE \rd_cmd_ff0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[0]),
        .Q(rd_cmd_ff0[0]));
  FDCE \rd_cmd_ff0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[10]),
        .Q(rd_cmd_ff0[10]));
  FDCE \rd_cmd_ff0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[11]),
        .Q(rd_cmd_ff0[11]));
  FDCE \rd_cmd_ff0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[12]),
        .Q(rd_cmd_ff0[12]));
  FDCE \rd_cmd_ff0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[13]),
        .Q(rd_cmd_ff0[13]));
  FDCE \rd_cmd_ff0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[14]),
        .Q(rd_cmd_ff0[14]));
  FDCE \rd_cmd_ff0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[15]),
        .Q(rd_cmd_ff0[15]));
  FDCE \rd_cmd_ff0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[16]),
        .Q(rd_cmd_ff0[16]));
  FDCE \rd_cmd_ff0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[17]),
        .Q(rd_cmd_ff0[17]));
  FDCE \rd_cmd_ff0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[18]),
        .Q(rd_cmd_ff0[18]));
  FDCE \rd_cmd_ff0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[19]),
        .Q(rd_cmd_ff0[19]));
  FDCE \rd_cmd_ff0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[1]),
        .Q(rd_cmd_ff0[1]));
  FDCE \rd_cmd_ff0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[20]),
        .Q(rd_cmd_ff0[20]));
  FDCE \rd_cmd_ff0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[21]),
        .Q(rd_cmd_ff0[21]));
  FDCE \rd_cmd_ff0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[22]),
        .Q(rd_cmd_ff0[22]));
  FDCE \rd_cmd_ff0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[23]),
        .Q(rd_cmd_ff0[23]));
  FDCE \rd_cmd_ff0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[24]),
        .Q(rd_cmd_ff0[24]));
  FDCE \rd_cmd_ff0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[25]),
        .Q(rd_cmd_ff0[25]));
  FDCE \rd_cmd_ff0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[26]),
        .Q(rd_cmd_ff0[26]));
  FDCE \rd_cmd_ff0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[27]),
        .Q(rd_cmd_ff0[27]));
  FDCE \rd_cmd_ff0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[28]),
        .Q(rd_cmd_ff0[28]));
  FDCE \rd_cmd_ff0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[29]),
        .Q(rd_cmd_ff0[29]));
  FDCE \rd_cmd_ff0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[2]),
        .Q(rd_cmd_ff0[2]));
  FDCE \rd_cmd_ff0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[30]),
        .Q(rd_cmd_ff0[30]));
  FDCE \rd_cmd_ff0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[31]),
        .Q(rd_cmd_ff0[31]));
  FDCE \rd_cmd_ff0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[3]),
        .Q(rd_cmd_ff0[3]));
  FDCE \rd_cmd_ff0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[4]),
        .Q(rd_cmd_ff0[4]));
  FDCE \rd_cmd_ff0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[5]),
        .Q(rd_cmd_ff0[5]));
  FDCE \rd_cmd_ff0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[6]),
        .Q(rd_cmd_ff0[6]));
  FDCE \rd_cmd_ff0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[7]),
        .Q(rd_cmd_ff0[7]));
  FDCE \rd_cmd_ff0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[8]),
        .Q(rd_cmd_ff0[8]));
  FDCE \rd_cmd_ff0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg4[9]),
        .Q(rd_cmd_ff0[9]));
  FDCE \rd_cmd_ff1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[0]),
        .Q(rd_cmd_ff1[0]));
  FDCE \rd_cmd_ff1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[10]),
        .Q(rd_cmd_ff1[10]));
  FDCE \rd_cmd_ff1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[11]),
        .Q(rd_cmd_ff1[11]));
  FDCE \rd_cmd_ff1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[12]),
        .Q(rd_cmd_ff1[12]));
  FDCE \rd_cmd_ff1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[13]),
        .Q(rd_cmd_ff1[13]));
  FDCE \rd_cmd_ff1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[14]),
        .Q(rd_cmd_ff1[14]));
  FDCE \rd_cmd_ff1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[15]),
        .Q(rd_cmd_ff1[15]));
  FDCE \rd_cmd_ff1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[16]),
        .Q(rd_cmd_ff1[16]));
  FDCE \rd_cmd_ff1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[17]),
        .Q(rd_cmd_ff1[17]));
  FDCE \rd_cmd_ff1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[18]),
        .Q(rd_cmd_ff1[18]));
  FDCE \rd_cmd_ff1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[19]),
        .Q(rd_cmd_ff1[19]));
  FDCE \rd_cmd_ff1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[1]),
        .Q(rd_cmd_ff1[1]));
  FDCE \rd_cmd_ff1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[20]),
        .Q(rd_cmd_ff1[20]));
  FDCE \rd_cmd_ff1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[21]),
        .Q(rd_cmd_ff1[21]));
  FDCE \rd_cmd_ff1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[22]),
        .Q(rd_cmd_ff1[22]));
  FDCE \rd_cmd_ff1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[23]),
        .Q(rd_cmd_ff1[23]));
  FDCE \rd_cmd_ff1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[24]),
        .Q(rd_cmd_ff1[24]));
  FDCE \rd_cmd_ff1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[25]),
        .Q(rd_cmd_ff1[25]));
  FDCE \rd_cmd_ff1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[26]),
        .Q(rd_cmd_ff1[26]));
  FDCE \rd_cmd_ff1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[27]),
        .Q(rd_cmd_ff1[27]));
  FDCE \rd_cmd_ff1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[28]),
        .Q(rd_cmd_ff1[28]));
  FDCE \rd_cmd_ff1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[29]),
        .Q(rd_cmd_ff1[29]));
  FDCE \rd_cmd_ff1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[2]),
        .Q(rd_cmd_ff1[2]));
  FDCE \rd_cmd_ff1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[30]),
        .Q(rd_cmd_ff1[30]));
  FDCE \rd_cmd_ff1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[31]),
        .Q(rd_cmd_ff1[31]));
  FDCE \rd_cmd_ff1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[3]),
        .Q(rd_cmd_ff1[3]));
  FDCE \rd_cmd_ff1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[4]),
        .Q(rd_cmd_ff1[4]));
  FDCE \rd_cmd_ff1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[5]),
        .Q(rd_cmd_ff1[5]));
  FDCE \rd_cmd_ff1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[6]),
        .Q(rd_cmd_ff1[6]));
  FDCE \rd_cmd_ff1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[7]),
        .Q(rd_cmd_ff1[7]));
  FDCE \rd_cmd_ff1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[8]),
        .Q(rd_cmd_ff1[8]));
  FDCE \rd_cmd_ff1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(rd_cmd_ff0[9]),
        .Q(rd_cmd_ff1[9]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(adi_spi_driver_7_8bit_inst_n_1));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden__0));
  FDCE \wr_cmd_ff0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[0]),
        .Q(wr_cmd_ff0[0]));
  FDCE \wr_cmd_ff0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[10]),
        .Q(wr_cmd_ff0[10]));
  FDCE \wr_cmd_ff0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[11]),
        .Q(wr_cmd_ff0[11]));
  FDCE \wr_cmd_ff0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[12]),
        .Q(wr_cmd_ff0[12]));
  FDCE \wr_cmd_ff0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[13]),
        .Q(wr_cmd_ff0[13]));
  FDCE \wr_cmd_ff0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[14]),
        .Q(wr_cmd_ff0[14]));
  FDCE \wr_cmd_ff0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[15]),
        .Q(wr_cmd_ff0[15]));
  FDCE \wr_cmd_ff0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[16]),
        .Q(wr_cmd_ff0[16]));
  FDCE \wr_cmd_ff0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[17]),
        .Q(wr_cmd_ff0[17]));
  FDCE \wr_cmd_ff0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[18]),
        .Q(wr_cmd_ff0[18]));
  FDCE \wr_cmd_ff0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[19]),
        .Q(wr_cmd_ff0[19]));
  FDCE \wr_cmd_ff0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[1]),
        .Q(wr_cmd_ff0[1]));
  FDCE \wr_cmd_ff0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[20]),
        .Q(wr_cmd_ff0[20]));
  FDCE \wr_cmd_ff0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[21]),
        .Q(wr_cmd_ff0[21]));
  FDCE \wr_cmd_ff0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[22]),
        .Q(wr_cmd_ff0[22]));
  FDCE \wr_cmd_ff0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[23]),
        .Q(wr_cmd_ff0[23]));
  FDCE \wr_cmd_ff0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[24]),
        .Q(wr_cmd_ff0[24]));
  FDCE \wr_cmd_ff0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[25]),
        .Q(wr_cmd_ff0[25]));
  FDCE \wr_cmd_ff0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[26]),
        .Q(wr_cmd_ff0[26]));
  FDCE \wr_cmd_ff0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[27]),
        .Q(wr_cmd_ff0[27]));
  FDCE \wr_cmd_ff0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[28]),
        .Q(wr_cmd_ff0[28]));
  FDCE \wr_cmd_ff0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[29]),
        .Q(wr_cmd_ff0[29]));
  FDCE \wr_cmd_ff0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[2]),
        .Q(wr_cmd_ff0[2]));
  FDCE \wr_cmd_ff0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[30]),
        .Q(wr_cmd_ff0[30]));
  FDCE \wr_cmd_ff0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[31]),
        .Q(wr_cmd_ff0[31]));
  FDCE \wr_cmd_ff0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[3]),
        .Q(wr_cmd_ff0[3]));
  FDCE \wr_cmd_ff0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[4]),
        .Q(wr_cmd_ff0[4]));
  FDCE \wr_cmd_ff0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[5]),
        .Q(wr_cmd_ff0[5]));
  FDCE \wr_cmd_ff0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[6]),
        .Q(wr_cmd_ff0[6]));
  FDCE \wr_cmd_ff0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[7]),
        .Q(wr_cmd_ff0[7]));
  FDCE \wr_cmd_ff0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[8]),
        .Q(wr_cmd_ff0[8]));
  FDCE \wr_cmd_ff0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(slv_reg2[9]),
        .Q(wr_cmd_ff0[9]));
  FDCE \wr_cmd_ff1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[0]),
        .Q(wr_cmd_ff1[0]));
  FDCE \wr_cmd_ff1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[10]),
        .Q(wr_cmd_ff1[10]));
  FDCE \wr_cmd_ff1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[11]),
        .Q(wr_cmd_ff1[11]));
  FDCE \wr_cmd_ff1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[12]),
        .Q(wr_cmd_ff1[12]));
  FDCE \wr_cmd_ff1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[13]),
        .Q(wr_cmd_ff1[13]));
  FDCE \wr_cmd_ff1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[14]),
        .Q(wr_cmd_ff1[14]));
  FDCE \wr_cmd_ff1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[15]),
        .Q(wr_cmd_ff1[15]));
  FDCE \wr_cmd_ff1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[16]),
        .Q(wr_cmd_ff1[16]));
  FDCE \wr_cmd_ff1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[17]),
        .Q(wr_cmd_ff1[17]));
  FDCE \wr_cmd_ff1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[18]),
        .Q(wr_cmd_ff1[18]));
  FDCE \wr_cmd_ff1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[19]),
        .Q(wr_cmd_ff1[19]));
  FDCE \wr_cmd_ff1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[1]),
        .Q(wr_cmd_ff1[1]));
  FDCE \wr_cmd_ff1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[20]),
        .Q(wr_cmd_ff1[20]));
  FDCE \wr_cmd_ff1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[21]),
        .Q(wr_cmd_ff1[21]));
  FDCE \wr_cmd_ff1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[22]),
        .Q(wr_cmd_ff1[22]));
  FDCE \wr_cmd_ff1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[23]),
        .Q(wr_cmd_ff1[23]));
  FDCE \wr_cmd_ff1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[24]),
        .Q(wr_cmd_ff1[24]));
  FDCE \wr_cmd_ff1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[25]),
        .Q(wr_cmd_ff1[25]));
  FDCE \wr_cmd_ff1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[26]),
        .Q(wr_cmd_ff1[26]));
  FDCE \wr_cmd_ff1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[27]),
        .Q(wr_cmd_ff1[27]));
  FDCE \wr_cmd_ff1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[28]),
        .Q(wr_cmd_ff1[28]));
  FDCE \wr_cmd_ff1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[29]),
        .Q(wr_cmd_ff1[29]));
  FDCE \wr_cmd_ff1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[2]),
        .Q(wr_cmd_ff1[2]));
  FDCE \wr_cmd_ff1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[30]),
        .Q(wr_cmd_ff1[30]));
  FDCE \wr_cmd_ff1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[31]),
        .Q(wr_cmd_ff1[31]));
  FDCE \wr_cmd_ff1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[3]),
        .Q(wr_cmd_ff1[3]));
  FDCE \wr_cmd_ff1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[4]),
        .Q(wr_cmd_ff1[4]));
  FDCE \wr_cmd_ff1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[5]),
        .Q(wr_cmd_ff1[5]));
  FDCE \wr_cmd_ff1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[6]),
        .Q(wr_cmd_ff1[6]));
  FDCE \wr_cmd_ff1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[7]),
        .Q(wr_cmd_ff1[7]));
  FDCE \wr_cmd_ff1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[8]),
        .Q(wr_cmd_ff1[8]));
  FDCE \wr_cmd_ff1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(adi_spi_driver_7_8bit_inst_n_1),
        .D(wr_cmd_ff0[9]),
        .Q(wr_cmd_ff1[9]));
endmodule

(* ORIG_REF_NAME = "adi_spi_driver_7_8bit" *) 
module Microblaze_xz_AXI4_ADI_SPI_7_8BIT_0_0_adi_spi_driver_7_8bit
   (rst_spi_pin,
    user_wr_vild_reg_0,
    scb,
    user_wr_vild,
    user_rd_vild,
    sclk,
    dir,
    D,
    sdio,
    s00_axi_aclk,
    Q,
    \rd_cmd_ff0_reg[31] ,
    \wr_cmd_ff1_reg[31] ,
    \wr_cmd_ff0_reg[31] ,
    sel0,
    \slv_reg1_reg[0] ,
    \slv_reg4_reg[7] ,
    \slv_reg1_reg[1] ,
    \slv_reg1_reg[2] ,
    \slv_reg1_reg[3] ,
    \slv_reg1_reg[4] ,
    \slv_reg1_reg[5] ,
    \slv_reg1_reg[6] ,
    \slv_reg1_reg[7] ,
    s00_axi_aresetn,
    \slv_reg1_reg[7]_0 ,
    \slv_reg3_reg[6] ,
    \slv_reg0_reg[6] );
  output rst_spi_pin;
  output user_wr_vild_reg_0;
  output scb;
  output user_wr_vild;
  output user_rd_vild;
  output sclk;
  output dir;
  output [7:0]D;
  inout sdio;
  input s00_axi_aclk;
  input [31:0]Q;
  input [31:0]\rd_cmd_ff0_reg[31] ;
  input [31:0]\wr_cmd_ff1_reg[31] ;
  input [31:0]\wr_cmd_ff0_reg[31] ;
  input [2:0]sel0;
  input \slv_reg1_reg[0] ;
  input [7:0]\slv_reg4_reg[7] ;
  input \slv_reg1_reg[1] ;
  input \slv_reg1_reg[2] ;
  input \slv_reg1_reg[3] ;
  input \slv_reg1_reg[4] ;
  input \slv_reg1_reg[5] ;
  input \slv_reg1_reg[6] ;
  input \slv_reg1_reg[7] ;
  input s00_axi_aresetn;
  input [7:0]\slv_reg1_reg[7]_0 ;
  input [6:0]\slv_reg3_reg[6] ;
  input [6:0]\slv_reg0_reg[6] ;

  wire [7:0]D;
  wire [31:0]Q;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \baud_cnt[0]_i_2_n_0 ;
  wire \baud_cnt[0]_i_3_n_0 ;
  wire \baud_cnt[0]_i_4_n_0 ;
  wire \baud_cnt[0]_i_5_n_0 ;
  wire \baud_cnt[0]_i_6_n_0 ;
  wire \baud_cnt[12]_i_2_n_0 ;
  wire \baud_cnt[12]_i_3_n_0 ;
  wire \baud_cnt[12]_i_4_n_0 ;
  wire \baud_cnt[12]_i_5_n_0 ;
  wire \baud_cnt[4]_i_2_n_0 ;
  wire \baud_cnt[4]_i_3_n_0 ;
  wire \baud_cnt[4]_i_4_n_0 ;
  wire \baud_cnt[4]_i_5_n_0 ;
  wire \baud_cnt[8]_i_2_n_0 ;
  wire \baud_cnt[8]_i_3_n_0 ;
  wire \baud_cnt[8]_i_4_n_0 ;
  wire \baud_cnt[8]_i_5_n_0 ;
  wire [15:0]baud_cnt_reg;
  wire \baud_cnt_reg[0]_i_1_n_0 ;
  wire \baud_cnt_reg[0]_i_1_n_1 ;
  wire \baud_cnt_reg[0]_i_1_n_2 ;
  wire \baud_cnt_reg[0]_i_1_n_3 ;
  wire \baud_cnt_reg[0]_i_1_n_4 ;
  wire \baud_cnt_reg[0]_i_1_n_5 ;
  wire \baud_cnt_reg[0]_i_1_n_6 ;
  wire \baud_cnt_reg[0]_i_1_n_7 ;
  wire \baud_cnt_reg[12]_i_1_n_1 ;
  wire \baud_cnt_reg[12]_i_1_n_2 ;
  wire \baud_cnt_reg[12]_i_1_n_3 ;
  wire \baud_cnt_reg[12]_i_1_n_4 ;
  wire \baud_cnt_reg[12]_i_1_n_5 ;
  wire \baud_cnt_reg[12]_i_1_n_6 ;
  wire \baud_cnt_reg[12]_i_1_n_7 ;
  wire \baud_cnt_reg[4]_i_1_n_0 ;
  wire \baud_cnt_reg[4]_i_1_n_1 ;
  wire \baud_cnt_reg[4]_i_1_n_2 ;
  wire \baud_cnt_reg[4]_i_1_n_3 ;
  wire \baud_cnt_reg[4]_i_1_n_4 ;
  wire \baud_cnt_reg[4]_i_1_n_5 ;
  wire \baud_cnt_reg[4]_i_1_n_6 ;
  wire \baud_cnt_reg[4]_i_1_n_7 ;
  wire \baud_cnt_reg[8]_i_1_n_0 ;
  wire \baud_cnt_reg[8]_i_1_n_1 ;
  wire \baud_cnt_reg[8]_i_1_n_2 ;
  wire \baud_cnt_reg[8]_i_1_n_3 ;
  wire \baud_cnt_reg[8]_i_1_n_4 ;
  wire \baud_cnt_reg[8]_i_1_n_5 ;
  wire \baud_cnt_reg[8]_i_1_n_6 ;
  wire \baud_cnt_reg[8]_i_1_n_7 ;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire [1:0]byte_cnt;
  wire \byte_cnt[0]_i_1_n_0 ;
  wire \byte_cnt[1]_i_1_n_0 ;
  wire [19:1]data0;
  wire dir;
  wire flag_add_i_1_n_0;
  wire flag_sel;
  wire flag_sel_i_1_n_0;
  wire p_5_in;
  wire [19:0]pulse_cnt;
  wire pulse_cnt0_carry__0_n_0;
  wire pulse_cnt0_carry__0_n_1;
  wire pulse_cnt0_carry__0_n_2;
  wire pulse_cnt0_carry__0_n_3;
  wire pulse_cnt0_carry__1_n_0;
  wire pulse_cnt0_carry__1_n_1;
  wire pulse_cnt0_carry__1_n_2;
  wire pulse_cnt0_carry__1_n_3;
  wire pulse_cnt0_carry__2_n_0;
  wire pulse_cnt0_carry__2_n_1;
  wire pulse_cnt0_carry__2_n_2;
  wire pulse_cnt0_carry__2_n_3;
  wire pulse_cnt0_carry__3_n_2;
  wire pulse_cnt0_carry__3_n_3;
  wire pulse_cnt0_carry_n_0;
  wire pulse_cnt0_carry_n_1;
  wire pulse_cnt0_carry_n_2;
  wire pulse_cnt0_carry_n_3;
  wire \pulse_cnt[0]_i_2_n_0 ;
  wire \pulse_cnt[0]_i_3_n_0 ;
  wire \pulse_cnt[0]_i_4_n_0 ;
  wire \pulse_cnt[19]_i_2_n_0 ;
  wire [19:0]pulse_cnt_0;
  wire [6:0]rd_addr_s;
  wire \rd_addr_s[6]_i_10_n_0 ;
  wire \rd_addr_s[6]_i_11_n_0 ;
  wire \rd_addr_s[6]_i_12_n_0 ;
  wire \rd_addr_s[6]_i_13_n_0 ;
  wire \rd_addr_s[6]_i_14_n_0 ;
  wire \rd_addr_s[6]_i_15_n_0 ;
  wire \rd_addr_s[6]_i_16_n_0 ;
  wire \rd_addr_s[6]_i_17_n_0 ;
  wire \rd_addr_s[6]_i_18_n_0 ;
  wire \rd_addr_s[6]_i_19_n_0 ;
  wire \rd_addr_s[6]_i_2_n_0 ;
  wire \rd_addr_s[6]_i_3_n_0 ;
  wire \rd_addr_s[6]_i_4_n_0 ;
  wire \rd_addr_s[6]_i_5_n_0 ;
  wire \rd_addr_s[6]_i_6_n_0 ;
  wire \rd_addr_s[6]_i_7_n_0 ;
  wire \rd_addr_s[6]_i_8_n_0 ;
  wire \rd_addr_s[6]_i_9_n_0 ;
  wire [31:0]\rd_cmd_ff0_reg[31] ;
  wire [7:0]rd_data_s;
  wire rd_data_s1__1;
  wire \rd_data_s[0]_i_1_n_0 ;
  wire \rd_data_s[1]_i_1_n_0 ;
  wire \rd_data_s[2]_i_1_n_0 ;
  wire \rd_data_s[3]_i_1_n_0 ;
  wire \rd_data_s[4]_i_1_n_0 ;
  wire \rd_data_s[5]_i_1_n_0 ;
  wire \rd_data_s[6]_i_1_n_0 ;
  wire \rd_data_s[7]_i_1_n_0 ;
  wire \rd_data_s[7]_i_3_n_0 ;
  wire \rd_data_s[7]_i_4_n_0 ;
  wire rst_spi_pin;
  wire rst_spi_pin_i_1_n_0;
  wire rst_spi_pin_i_2_n_0;
  wire rst_spi_pin_i_3_n_0;
  wire rst_spi_pin_i_4_n_0;
  wire rst_spi_pin_i_5_n_0;
  wire rst_spi_pin_i_6_n_0;
  wire rst_spi_pin_i_7_n_0;
  wire rst_spi_pin_i_8_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scb;
  wire scb_i_1_n_0;
  wire sclk;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire sclk_i_3_n_0;
  wire sclk_i_4_n_0;
  wire sclk_i_5_n_0;
  wire sclk_i_6_n_0;
  wire sclk_i_7_n_0;
  wire sclk_i_8_n_0;
  wire sdio;
  wire sdio_in_q1;
  wire sdio_in_q2;
  wire sdio_out;
  wire sdio_out1__0;
  wire sdio_out_i_10_n_0;
  wire sdio_out_i_11_n_0;
  wire sdio_out_i_12_n_0;
  wire sdio_out_i_13_n_0;
  wire sdio_out_i_14_n_0;
  wire sdio_out_i_1_n_0;
  wire sdio_out_i_2_n_0;
  wire sdio_out_i_3_n_0;
  wire sdio_out_i_5_n_0;
  wire sdio_out_i_6_n_0;
  wire sdio_out_i_7_n_0;
  wire sdio_out_i_8_n_0;
  wire sdio_out_i_9_n_0;
  wire [2:0]sel0;
  wire [6:0]\slv_reg0_reg[6] ;
  wire \slv_reg1_reg[0] ;
  wire \slv_reg1_reg[1] ;
  wire \slv_reg1_reg[2] ;
  wire \slv_reg1_reg[3] ;
  wire \slv_reg1_reg[4] ;
  wire \slv_reg1_reg[5] ;
  wire \slv_reg1_reg[6] ;
  wire \slv_reg1_reg[7] ;
  wire [7:0]\slv_reg1_reg[7]_0 ;
  wire [6:0]\slv_reg3_reg[6] ;
  wire [7:0]\slv_reg4_reg[7] ;
  wire user_op_busy;
  wire [7:0]user_rd_data;
  wire user_rd_data0;
  wire user_rd_en;
  wire user_rd_vild;
  wire user_rd_vild_i_1_n_0;
  wire user_wr_en;
  wire user_wr_vild;
  wire user_wr_vild_i_1_n_0;
  wire user_wr_vild_reg_0;
  wire [6:0]wr_addr_s;
  wire [31:0]\wr_cmd_ff0_reg[31] ;
  wire [31:0]\wr_cmd_ff1_reg[31] ;
  wire [7:0]wr_data_s;
  wire \wr_data_s[7]_i_10_n_0 ;
  wire \wr_data_s[7]_i_11_n_0 ;
  wire \wr_data_s[7]_i_12_n_0 ;
  wire \wr_data_s[7]_i_13_n_0 ;
  wire \wr_data_s[7]_i_14_n_0 ;
  wire \wr_data_s[7]_i_15_n_0 ;
  wire \wr_data_s[7]_i_16_n_0 ;
  wire \wr_data_s[7]_i_17_n_0 ;
  wire \wr_data_s[7]_i_18_n_0 ;
  wire \wr_data_s[7]_i_19_n_0 ;
  wire \wr_data_s[7]_i_2_n_0 ;
  wire \wr_data_s[7]_i_3_n_0 ;
  wire \wr_data_s[7]_i_4_n_0 ;
  wire \wr_data_s[7]_i_5_n_0 ;
  wire \wr_data_s[7]_i_6_n_0 ;
  wire \wr_data_s[7]_i_7_n_0 ;
  wire \wr_data_s[7]_i_8_n_0 ;
  wire \wr_data_s[7]_i_9_n_0 ;
  wire [3:3]\NLW_baud_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_pulse_cnt0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_pulse_cnt0_carry__3_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[0]_i_3 
       (.I0(\slv_reg4_reg[7] [0]),
        .I1(user_op_busy),
        .I2(user_rd_data[0]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg[1] ),
        .I1(\slv_reg4_reg[7] [1]),
        .I2(user_rd_data[1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg[2] ),
        .I1(\slv_reg4_reg[7] [2]),
        .I2(user_rd_data[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg[3] ),
        .I1(\slv_reg4_reg[7] [3]),
        .I2(user_rd_data[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg[4] ),
        .I1(\slv_reg4_reg[7] [4]),
        .I2(user_rd_data[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg[5] ),
        .I1(\slv_reg4_reg[7] [5]),
        .I2(user_rd_data[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg[6] ),
        .I1(\slv_reg4_reg[7] [6]),
        .I2(user_rd_data[6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00F000CCAAAAAAAA)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg[7] ),
        .I1(\slv_reg4_reg[7] [7]),
        .I2(user_rd_data[7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(D[7]));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\slv_reg1_reg[0] ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(D[0]),
        .S(sel0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[0]_i_2 
       (.I0(baud_cnt_reg[0]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[0]_i_3 
       (.I0(baud_cnt_reg[3]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[0]_i_4 
       (.I0(baud_cnt_reg[2]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[0]_i_5 
       (.I0(baud_cnt_reg[1]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \baud_cnt[0]_i_6 
       (.I0(baud_cnt_reg[0]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[12]_i_2 
       (.I0(baud_cnt_reg[15]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[12]_i_3 
       (.I0(baud_cnt_reg[14]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[12]_i_4 
       (.I0(baud_cnt_reg[13]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[12]_i_5 
       (.I0(baud_cnt_reg[12]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[4]_i_2 
       (.I0(baud_cnt_reg[7]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[4]_i_3 
       (.I0(baud_cnt_reg[6]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[4]_i_4 
       (.I0(baud_cnt_reg[5]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[4]_i_5 
       (.I0(baud_cnt_reg[4]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[8]_i_2 
       (.I0(baud_cnt_reg[11]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[8]_i_3 
       (.I0(baud_cnt_reg[10]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[8]_i_4 
       (.I0(baud_cnt_reg[9]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_cnt[8]_i_5 
       (.I0(baud_cnt_reg[8]),
        .I1(sclk_i_3_n_0),
        .O(\baud_cnt[8]_i_5_n_0 ));
  FDCE \baud_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[0]_i_1_n_7 ),
        .Q(baud_cnt_reg[0]));
  CARRY4 \baud_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\baud_cnt_reg[0]_i_1_n_0 ,\baud_cnt_reg[0]_i_1_n_1 ,\baud_cnt_reg[0]_i_1_n_2 ,\baud_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\baud_cnt[0]_i_2_n_0 }),
        .O({\baud_cnt_reg[0]_i_1_n_4 ,\baud_cnt_reg[0]_i_1_n_5 ,\baud_cnt_reg[0]_i_1_n_6 ,\baud_cnt_reg[0]_i_1_n_7 }),
        .S({\baud_cnt[0]_i_3_n_0 ,\baud_cnt[0]_i_4_n_0 ,\baud_cnt[0]_i_5_n_0 ,\baud_cnt[0]_i_6_n_0 }));
  FDCE \baud_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[8]_i_1_n_5 ),
        .Q(baud_cnt_reg[10]));
  FDCE \baud_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[8]_i_1_n_4 ),
        .Q(baud_cnt_reg[11]));
  FDCE \baud_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[12]_i_1_n_7 ),
        .Q(baud_cnt_reg[12]));
  CARRY4 \baud_cnt_reg[12]_i_1 
       (.CI(\baud_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_baud_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\baud_cnt_reg[12]_i_1_n_1 ,\baud_cnt_reg[12]_i_1_n_2 ,\baud_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baud_cnt_reg[12]_i_1_n_4 ,\baud_cnt_reg[12]_i_1_n_5 ,\baud_cnt_reg[12]_i_1_n_6 ,\baud_cnt_reg[12]_i_1_n_7 }),
        .S({\baud_cnt[12]_i_2_n_0 ,\baud_cnt[12]_i_3_n_0 ,\baud_cnt[12]_i_4_n_0 ,\baud_cnt[12]_i_5_n_0 }));
  FDCE \baud_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[12]_i_1_n_6 ),
        .Q(baud_cnt_reg[13]));
  FDCE \baud_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[12]_i_1_n_5 ),
        .Q(baud_cnt_reg[14]));
  FDCE \baud_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[12]_i_1_n_4 ),
        .Q(baud_cnt_reg[15]));
  FDCE \baud_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[0]_i_1_n_6 ),
        .Q(baud_cnt_reg[1]));
  FDCE \baud_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[0]_i_1_n_5 ),
        .Q(baud_cnt_reg[2]));
  FDCE \baud_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[0]_i_1_n_4 ),
        .Q(baud_cnt_reg[3]));
  FDCE \baud_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[4]_i_1_n_7 ),
        .Q(baud_cnt_reg[4]));
  CARRY4 \baud_cnt_reg[4]_i_1 
       (.CI(\baud_cnt_reg[0]_i_1_n_0 ),
        .CO({\baud_cnt_reg[4]_i_1_n_0 ,\baud_cnt_reg[4]_i_1_n_1 ,\baud_cnt_reg[4]_i_1_n_2 ,\baud_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baud_cnt_reg[4]_i_1_n_4 ,\baud_cnt_reg[4]_i_1_n_5 ,\baud_cnt_reg[4]_i_1_n_6 ,\baud_cnt_reg[4]_i_1_n_7 }),
        .S({\baud_cnt[4]_i_2_n_0 ,\baud_cnt[4]_i_3_n_0 ,\baud_cnt[4]_i_4_n_0 ,\baud_cnt[4]_i_5_n_0 }));
  FDCE \baud_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[4]_i_1_n_6 ),
        .Q(baud_cnt_reg[5]));
  FDCE \baud_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[4]_i_1_n_5 ),
        .Q(baud_cnt_reg[6]));
  FDCE \baud_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[4]_i_1_n_4 ),
        .Q(baud_cnt_reg[7]));
  FDCE \baud_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[8]_i_1_n_7 ),
        .Q(baud_cnt_reg[8]));
  CARRY4 \baud_cnt_reg[8]_i_1 
       (.CI(\baud_cnt_reg[4]_i_1_n_0 ),
        .CO({\baud_cnt_reg[8]_i_1_n_0 ,\baud_cnt_reg[8]_i_1_n_1 ,\baud_cnt_reg[8]_i_1_n_2 ,\baud_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baud_cnt_reg[8]_i_1_n_4 ,\baud_cnt_reg[8]_i_1_n_5 ,\baud_cnt_reg[8]_i_1_n_6 ,\baud_cnt_reg[8]_i_1_n_7 }),
        .S({\baud_cnt[8]_i_2_n_0 ,\baud_cnt[8]_i_3_n_0 ,\baud_cnt[8]_i_4_n_0 ,\baud_cnt[8]_i_5_n_0 }));
  FDCE \baud_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(user_op_busy),
        .CLR(user_wr_vild_reg_0),
        .D(\baud_cnt_reg[8]_i_1_n_6 ),
        .Q(baud_cnt_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[0]_i_1 
       (.I0(sclk_i_3_n_0),
        .I1(bit_cnt[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[0]),
        .I1(sclk_i_3_n_0),
        .I2(bit_cnt[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(sclk_i_3_n_0),
        .I3(bit_cnt[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDCE \bit_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt[0]));
  FDCE \bit_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt[1]));
  FDCE \bit_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byte_cnt[0]_i_1 
       (.I0(p_5_in),
        .I1(byte_cnt[0]),
        .O(\byte_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \byte_cnt[1]_i_1 
       (.I0(byte_cnt[0]),
        .I1(p_5_in),
        .I2(byte_cnt[1]),
        .O(\byte_cnt[1]_i_1_n_0 ));
  FDCE \byte_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\byte_cnt[0]_i_1_n_0 ),
        .Q(byte_cnt[0]));
  FDCE \byte_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\byte_cnt[1]_i_1_n_0 ),
        .Q(byte_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hC8CC)) 
    dir_INST_0
       (.I0(flag_sel),
        .I1(user_op_busy),
        .I2(byte_cnt[1]),
        .I3(byte_cnt[0]),
        .O(dir));
  LUT6 #(
    .INIT(64'hFEFFFFFFEEEEEEEE)) 
    flag_add_i_1
       (.I0(user_rd_en),
        .I1(user_wr_en),
        .I2(byte_cnt[1]),
        .I3(byte_cnt[0]),
        .I4(p_5_in),
        .I5(user_op_busy),
        .O(flag_add_i_1_n_0));
  FDCE flag_add_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(flag_add_i_1_n_0),
        .Q(user_op_busy));
  LUT3 #(
    .INIT(8'hBA)) 
    flag_sel_i_1
       (.I0(user_wr_en),
        .I1(user_rd_en),
        .I2(flag_sel),
        .O(flag_sel_i_1_n_0));
  FDCE flag_sel_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(flag_sel_i_1_n_0),
        .Q(flag_sel));
  CARRY4 pulse_cnt0_carry
       (.CI(1'b0),
        .CO({pulse_cnt0_carry_n_0,pulse_cnt0_carry_n_1,pulse_cnt0_carry_n_2,pulse_cnt0_carry_n_3}),
        .CYINIT(pulse_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(pulse_cnt[4:1]));
  CARRY4 pulse_cnt0_carry__0
       (.CI(pulse_cnt0_carry_n_0),
        .CO({pulse_cnt0_carry__0_n_0,pulse_cnt0_carry__0_n_1,pulse_cnt0_carry__0_n_2,pulse_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(pulse_cnt[8:5]));
  CARRY4 pulse_cnt0_carry__1
       (.CI(pulse_cnt0_carry__0_n_0),
        .CO({pulse_cnt0_carry__1_n_0,pulse_cnt0_carry__1_n_1,pulse_cnt0_carry__1_n_2,pulse_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(pulse_cnt[12:9]));
  CARRY4 pulse_cnt0_carry__2
       (.CI(pulse_cnt0_carry__1_n_0),
        .CO({pulse_cnt0_carry__2_n_0,pulse_cnt0_carry__2_n_1,pulse_cnt0_carry__2_n_2,pulse_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(pulse_cnt[16:13]));
  CARRY4 pulse_cnt0_carry__3
       (.CI(pulse_cnt0_carry__2_n_0),
        .CO({NLW_pulse_cnt0_carry__3_CO_UNCONNECTED[3:2],pulse_cnt0_carry__3_n_2,pulse_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pulse_cnt0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,pulse_cnt[19:17]}));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    \pulse_cnt[0]_i_1 
       (.I0(pulse_cnt[2]),
        .I1(pulse_cnt[1]),
        .I2(pulse_cnt[4]),
        .I3(pulse_cnt[3]),
        .I4(pulse_cnt[0]),
        .I5(\pulse_cnt[0]_i_2_n_0 ),
        .O(pulse_cnt_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pulse_cnt[0]_i_2 
       (.I0(pulse_cnt[13]),
        .I1(pulse_cnt[12]),
        .I2(pulse_cnt[8]),
        .I3(pulse_cnt[6]),
        .I4(\pulse_cnt[0]_i_3_n_0 ),
        .I5(\pulse_cnt[0]_i_4_n_0 ),
        .O(\pulse_cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \pulse_cnt[0]_i_3 
       (.I0(pulse_cnt[15]),
        .I1(pulse_cnt[5]),
        .I2(pulse_cnt[11]),
        .I3(pulse_cnt[14]),
        .I4(pulse_cnt[16]),
        .O(\pulse_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \pulse_cnt[0]_i_4 
       (.I0(pulse_cnt[19]),
        .I1(pulse_cnt[18]),
        .I2(pulse_cnt[17]),
        .I3(pulse_cnt[9]),
        .I4(pulse_cnt[10]),
        .I5(pulse_cnt[7]),
        .O(\pulse_cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\pulse_cnt[19]_i_2_n_0 ),
        .O(pulse_cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[11]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[11]),
        .O(pulse_cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[12]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[12]),
        .O(pulse_cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[13]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[13]),
        .O(pulse_cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[14]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[14]),
        .O(pulse_cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\pulse_cnt[19]_i_2_n_0 ),
        .O(pulse_cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[16]_i_1 
       (.I0(data0[16]),
        .I1(\pulse_cnt[19]_i_2_n_0 ),
        .O(pulse_cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[17]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[17]),
        .O(pulse_cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[18]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[18]),
        .O(pulse_cnt_0[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[19]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[19]),
        .O(pulse_cnt_0[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pulse_cnt[19]_i_2 
       (.I0(\pulse_cnt[0]_i_2_n_0 ),
        .I1(pulse_cnt[0]),
        .I2(pulse_cnt[2]),
        .I3(pulse_cnt[1]),
        .I4(pulse_cnt[4]),
        .I5(pulse_cnt[3]),
        .O(\pulse_cnt[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[1]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[1]),
        .O(pulse_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[2]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[2]),
        .O(pulse_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[3]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[3]),
        .O(pulse_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[4]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[4]),
        .O(pulse_cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\pulse_cnt[19]_i_2_n_0 ),
        .O(pulse_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[6]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[6]),
        .O(pulse_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\pulse_cnt[19]_i_2_n_0 ),
        .O(pulse_cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pulse_cnt[8]_i_1 
       (.I0(\pulse_cnt[19]_i_2_n_0 ),
        .I1(data0[8]),
        .O(pulse_cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulse_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\pulse_cnt[19]_i_2_n_0 ),
        .O(pulse_cnt_0[9]));
  FDCE \pulse_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[0]),
        .Q(pulse_cnt[0]));
  FDCE \pulse_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[10]),
        .Q(pulse_cnt[10]));
  FDCE \pulse_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[11]),
        .Q(pulse_cnt[11]));
  FDCE \pulse_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[12]),
        .Q(pulse_cnt[12]));
  FDCE \pulse_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[13]),
        .Q(pulse_cnt[13]));
  FDCE \pulse_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[14]),
        .Q(pulse_cnt[14]));
  FDCE \pulse_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[15]),
        .Q(pulse_cnt[15]));
  FDCE \pulse_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[16]),
        .Q(pulse_cnt[16]));
  FDCE \pulse_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[17]),
        .Q(pulse_cnt[17]));
  FDCE \pulse_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[18]),
        .Q(pulse_cnt[18]));
  FDCE \pulse_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[19]),
        .Q(pulse_cnt[19]));
  FDCE \pulse_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[1]),
        .Q(pulse_cnt[1]));
  FDCE \pulse_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[2]),
        .Q(pulse_cnt[2]));
  FDCE \pulse_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[3]),
        .Q(pulse_cnt[3]));
  FDCE \pulse_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[4]),
        .Q(pulse_cnt[4]));
  FDCE \pulse_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[5]),
        .Q(pulse_cnt[5]));
  FDCE \pulse_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[6]),
        .Q(pulse_cnt[6]));
  FDCE \pulse_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[7]),
        .Q(pulse_cnt[7]));
  FDCE \pulse_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[8]),
        .Q(pulse_cnt[8]));
  FDCE \pulse_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(pulse_cnt_0[9]),
        .Q(pulse_cnt[9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \rd_addr_s[6]_i_1 
       (.I0(\rd_addr_s[6]_i_2_n_0 ),
        .I1(\rd_addr_s[6]_i_3_n_0 ),
        .I2(\rd_addr_s[6]_i_4_n_0 ),
        .I3(\rd_addr_s[6]_i_5_n_0 ),
        .I4(\rd_addr_s[6]_i_6_n_0 ),
        .I5(\rd_addr_s[6]_i_7_n_0 ),
        .O(user_rd_en));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_addr_s[6]_i_10 
       (.I0(\rd_cmd_ff0_reg[31] [7]),
        .I1(\rd_cmd_ff0_reg[31] [6]),
        .I2(\rd_cmd_ff0_reg[31] [5]),
        .I3(\rd_cmd_ff0_reg[31] [4]),
        .O(\rd_addr_s[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_addr_s[6]_i_11 
       (.I0(\rd_cmd_ff0_reg[31] [11]),
        .I1(\rd_cmd_ff0_reg[31] [10]),
        .I2(\rd_cmd_ff0_reg[31] [9]),
        .I3(\rd_cmd_ff0_reg[31] [8]),
        .O(\rd_addr_s[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rd_addr_s[6]_i_12 
       (.I0(Q[20]),
        .I1(Q[23]),
        .I2(Q[22]),
        .I3(Q[30]),
        .O(\rd_addr_s[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rd_addr_s[6]_i_13 
       (.I0(Q[16]),
        .I1(Q[24]),
        .I2(Q[18]),
        .I3(Q[19]),
        .O(\rd_addr_s[6]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_s[6]_i_14 
       (.I0(Q[5]),
        .I1(Q[29]),
        .I2(Q[1]),
        .I3(Q[21]),
        .O(\rd_addr_s[6]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_s[6]_i_15 
       (.I0(Q[17]),
        .I1(Q[25]),
        .I2(Q[13]),
        .I3(Q[9]),
        .O(\rd_addr_s[6]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rd_addr_s[6]_i_16 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\rd_addr_s[6]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rd_addr_s[6]_i_17 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\rd_addr_s[6]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rd_addr_s[6]_i_18 
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[12]),
        .I3(Q[11]),
        .O(\rd_addr_s[6]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rd_addr_s[6]_i_19 
       (.I0(Q[31]),
        .I1(Q[28]),
        .I2(Q[27]),
        .I3(Q[26]),
        .O(\rd_addr_s[6]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rd_addr_s[6]_i_2 
       (.I0(\rd_cmd_ff0_reg[31] [19]),
        .I1(\rd_cmd_ff0_reg[31] [18]),
        .I2(\rd_cmd_ff0_reg[31] [17]),
        .I3(\rd_cmd_ff0_reg[31] [16]),
        .I4(\rd_addr_s[6]_i_8_n_0 ),
        .O(\rd_addr_s[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rd_addr_s[6]_i_3 
       (.I0(\rd_cmd_ff0_reg[31] [27]),
        .I1(\rd_cmd_ff0_reg[31] [26]),
        .I2(\rd_cmd_ff0_reg[31] [25]),
        .I3(\rd_cmd_ff0_reg[31] [24]),
        .I4(\rd_addr_s[6]_i_9_n_0 ),
        .O(\rd_addr_s[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rd_addr_s[6]_i_4 
       (.I0(\rd_cmd_ff0_reg[31] [2]),
        .I1(\rd_cmd_ff0_reg[31] [3]),
        .I2(\rd_cmd_ff0_reg[31] [0]),
        .I3(\rd_cmd_ff0_reg[31] [1]),
        .I4(\rd_addr_s[6]_i_10_n_0 ),
        .O(\rd_addr_s[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rd_addr_s[6]_i_5 
       (.I0(\rd_cmd_ff0_reg[31] [12]),
        .I1(\rd_cmd_ff0_reg[31] [13]),
        .I2(\rd_cmd_ff0_reg[31] [14]),
        .I3(\rd_cmd_ff0_reg[31] [15]),
        .I4(\rd_addr_s[6]_i_11_n_0 ),
        .O(\rd_addr_s[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_s[6]_i_6 
       (.I0(\rd_addr_s[6]_i_12_n_0 ),
        .I1(\rd_addr_s[6]_i_13_n_0 ),
        .I2(\rd_addr_s[6]_i_14_n_0 ),
        .I3(\rd_addr_s[6]_i_15_n_0 ),
        .O(\rd_addr_s[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rd_addr_s[6]_i_7 
       (.I0(\rd_addr_s[6]_i_16_n_0 ),
        .I1(\rd_addr_s[6]_i_17_n_0 ),
        .I2(\rd_addr_s[6]_i_18_n_0 ),
        .I3(\rd_addr_s[6]_i_19_n_0 ),
        .O(\rd_addr_s[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_s[6]_i_8 
       (.I0(\rd_cmd_ff0_reg[31] [20]),
        .I1(\rd_cmd_ff0_reg[31] [21]),
        .I2(\rd_cmd_ff0_reg[31] [22]),
        .I3(\rd_cmd_ff0_reg[31] [23]),
        .O(\rd_addr_s[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_addr_s[6]_i_9 
       (.I0(\rd_cmd_ff0_reg[31] [28]),
        .I1(\rd_cmd_ff0_reg[31] [29]),
        .I2(\rd_cmd_ff0_reg[31] [31]),
        .I3(\rd_cmd_ff0_reg[31] [30]),
        .O(\rd_addr_s[6]_i_9_n_0 ));
  FDCE \rd_addr_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [0]),
        .Q(rd_addr_s[0]));
  FDCE \rd_addr_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [1]),
        .Q(rd_addr_s[1]));
  FDCE \rd_addr_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [2]),
        .Q(rd_addr_s[2]));
  FDCE \rd_addr_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [3]),
        .Q(rd_addr_s[3]));
  FDCE \rd_addr_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [4]),
        .Q(rd_addr_s[4]));
  FDCE \rd_addr_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [5]),
        .Q(rd_addr_s[5]));
  FDCE \rd_addr_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(user_rd_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg3_reg[6] [6]),
        .Q(rd_addr_s[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \rd_data_s[0]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[0]),
        .O(\rd_data_s[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \rd_data_s[1]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[1]),
        .O(\rd_data_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \rd_data_s[2]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[2]),
        .O(\rd_data_s[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rd_data_s[3]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[1]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[3]),
        .O(\rd_data_s[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \rd_data_s[4]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[4]),
        .O(\rd_data_s[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rd_data_s[5]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[5]),
        .O(\rd_data_s[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rd_data_s[6]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[6]),
        .O(\rd_data_s[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \rd_data_s[7]_i_1 
       (.I0(sdio_in_q2),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(rd_data_s1__1),
        .I5(rd_data_s[7]),
        .O(\rd_data_s[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \rd_data_s[7]_i_2 
       (.I0(\rd_data_s[7]_i_3_n_0 ),
        .I1(baud_cnt_reg[1]),
        .I2(flag_sel),
        .I3(\rd_data_s[7]_i_4_n_0 ),
        .I4(baud_cnt_reg[4]),
        .I5(baud_cnt_reg[6]),
        .O(rd_data_s1__1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_data_s[7]_i_3 
       (.I0(byte_cnt[1]),
        .I1(byte_cnt[0]),
        .O(\rd_data_s[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rd_data_s[7]_i_4 
       (.I0(baud_cnt_reg[5]),
        .I1(baud_cnt_reg[0]),
        .I2(sclk_i_8_n_0),
        .I3(sclk_i_7_n_0),
        .I4(sclk_i_6_n_0),
        .O(\rd_data_s[7]_i_4_n_0 ));
  FDCE \rd_data_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[0]_i_1_n_0 ),
        .Q(rd_data_s[0]));
  FDCE \rd_data_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[1]_i_1_n_0 ),
        .Q(rd_data_s[1]));
  FDCE \rd_data_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[2]_i_1_n_0 ),
        .Q(rd_data_s[2]));
  FDCE \rd_data_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[3]_i_1_n_0 ),
        .Q(rd_data_s[3]));
  FDCE \rd_data_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[4]_i_1_n_0 ),
        .Q(rd_data_s[4]));
  FDCE \rd_data_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[5]_i_1_n_0 ),
        .Q(rd_data_s[5]));
  FDCE \rd_data_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[6]_i_1_n_0 ),
        .Q(rd_data_s[6]));
  FDCE \rd_data_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(\rd_data_s[7]_i_1_n_0 ),
        .Q(rd_data_s[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAAAAAAA)) 
    rst_spi_pin_i_1
       (.I0(rst_spi_pin_i_2_n_0),
        .I1(pulse_cnt[16]),
        .I2(pulse_cnt[11]),
        .I3(pulse_cnt[14]),
        .I4(rst_spi_pin_i_3_n_0),
        .I5(rst_spi_pin_i_4_n_0),
        .O(rst_spi_pin_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010001000000010)) 
    rst_spi_pin_i_2
       (.I0(pulse_cnt[15]),
        .I1(rst_spi_pin_i_5_n_0),
        .I2(pulse_cnt[16]),
        .I3(pulse_cnt[14]),
        .I4(pulse_cnt[11]),
        .I5(rst_spi_pin_i_6_n_0),
        .O(rst_spi_pin_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF8)) 
    rst_spi_pin_i_3
       (.I0(pulse_cnt[5]),
        .I1(rst_spi_pin_i_7_n_0),
        .I2(pulse_cnt[8]),
        .I3(pulse_cnt[6]),
        .I4(pulse_cnt[7]),
        .I5(rst_spi_pin_i_8_n_0),
        .O(rst_spi_pin_i_3_n_0));
  LUT6 #(
    .INIT(64'h1111111010101010)) 
    rst_spi_pin_i_4
       (.I0(pulse_cnt[16]),
        .I1(rst_spi_pin_i_5_n_0),
        .I2(pulse_cnt[15]),
        .I3(pulse_cnt[13]),
        .I4(pulse_cnt[12]),
        .I5(pulse_cnt[14]),
        .O(rst_spi_pin_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    rst_spi_pin_i_5
       (.I0(pulse_cnt[19]),
        .I1(pulse_cnt[18]),
        .I2(pulse_cnt[17]),
        .O(rst_spi_pin_i_5_n_0));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    rst_spi_pin_i_6
       (.I0(pulse_cnt[9]),
        .I1(pulse_cnt[10]),
        .I2(pulse_cnt[7]),
        .I3(pulse_cnt[8]),
        .I4(pulse_cnt[13]),
        .I5(pulse_cnt[12]),
        .O(rst_spi_pin_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rst_spi_pin_i_7
       (.I0(pulse_cnt[3]),
        .I1(pulse_cnt[4]),
        .I2(pulse_cnt[1]),
        .I3(pulse_cnt[2]),
        .I4(pulse_cnt[0]),
        .O(rst_spi_pin_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    rst_spi_pin_i_8
       (.I0(pulse_cnt[10]),
        .I1(pulse_cnt[9]),
        .I2(pulse_cnt[17]),
        .I3(pulse_cnt[18]),
        .I4(pulse_cnt[19]),
        .O(rst_spi_pin_i_8_n_0));
  FDCE rst_spi_pin_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(rst_spi_pin_i_1_n_0),
        .Q(rst_spi_pin));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    scb_i_1
       (.I0(user_op_busy),
        .O(scb_i_1_n_0));
  FDPE scb_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(scb_i_1_n_0),
        .PRE(user_wr_vild_reg_0),
        .Q(scb));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    sclk_i_1
       (.I0(baud_cnt_reg[1]),
        .I1(sclk_i_2_n_0),
        .I2(sclk_i_3_n_0),
        .I3(sclk),
        .O(sclk_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    sclk_i_2
       (.I0(baud_cnt_reg[6]),
        .I1(baud_cnt_reg[4]),
        .I2(sclk_i_4_n_0),
        .I3(baud_cnt_reg[0]),
        .I4(baud_cnt_reg[5]),
        .O(sclk_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    sclk_i_3
       (.I0(sclk_i_5_n_0),
        .I1(sclk_i_6_n_0),
        .I2(sclk_i_7_n_0),
        .I3(sclk_i_8_n_0),
        .I4(baud_cnt_reg[0]),
        .I5(baud_cnt_reg[5]),
        .O(sclk_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    sclk_i_4
       (.I0(sclk_i_6_n_0),
        .I1(baud_cnt_reg[15]),
        .I2(baud_cnt_reg[14]),
        .I3(baud_cnt_reg[13]),
        .I4(baud_cnt_reg[12]),
        .I5(sclk_i_8_n_0),
        .O(sclk_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sclk_i_5
       (.I0(baud_cnt_reg[4]),
        .I1(baud_cnt_reg[6]),
        .I2(baud_cnt_reg[1]),
        .O(sclk_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sclk_i_6
       (.I0(baud_cnt_reg[11]),
        .I1(baud_cnt_reg[10]),
        .I2(baud_cnt_reg[9]),
        .I3(baud_cnt_reg[8]),
        .O(sclk_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sclk_i_7
       (.I0(baud_cnt_reg[15]),
        .I1(baud_cnt_reg[14]),
        .I2(baud_cnt_reg[13]),
        .I3(baud_cnt_reg[12]),
        .O(sclk_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    sclk_i_8
       (.I0(baud_cnt_reg[2]),
        .I1(user_op_busy),
        .I2(baud_cnt_reg[7]),
        .I3(baud_cnt_reg[3]),
        .O(sclk_i_8_n_0));
  FDCE sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(sclk_i_1_n_0),
        .Q(sclk));
  LUT2 #(
    .INIT(4'h8)) 
    sdio_INST_0
       (.I0(sdio_out),
        .I1(dir),
        .O(sdio));
  FDCE sdio_in_q1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(sdio),
        .Q(sdio_in_q1));
  FDCE sdio_in_q2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(sdio_in_q1),
        .Q(sdio_in_q2));
  LUT6 #(
    .INIT(64'hFE0EFFFFFE0E0000)) 
    sdio_out_i_1
       (.I0(sdio_out_i_2_n_0),
        .I1(sdio_out_i_3_n_0),
        .I2(sdio_out1__0),
        .I3(sdio_out_i_5_n_0),
        .I4(sdio_out_i_6_n_0),
        .I5(sdio_out),
        .O(sdio_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    sdio_out_i_10
       (.I0(baud_cnt_reg[0]),
        .I1(baud_cnt_reg[1]),
        .I2(baud_cnt_reg[4]),
        .I3(baud_cnt_reg[6]),
        .I4(baud_cnt_reg[5]),
        .O(sdio_out_i_10_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    sdio_out_i_11
       (.I0(wr_addr_s[5]),
        .I1(wr_addr_s[4]),
        .I2(bit_cnt[0]),
        .I3(flag_sel),
        .I4(rd_addr_s[5]),
        .I5(rd_addr_s[4]),
        .O(sdio_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    sdio_out_i_12
       (.I0(wr_addr_s[1]),
        .I1(wr_addr_s[0]),
        .I2(bit_cnt[0]),
        .I3(flag_sel),
        .I4(rd_addr_s[1]),
        .I5(rd_addr_s[0]),
        .O(sdio_out_i_12_n_0));
  LUT6 #(
    .INIT(64'h1011001110010001)) 
    sdio_out_i_13
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(flag_sel),
        .I4(wr_addr_s[6]),
        .I5(rd_addr_s[6]),
        .O(sdio_out_i_13_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    sdio_out_i_14
       (.I0(wr_addr_s[3]),
        .I1(wr_addr_s[2]),
        .I2(bit_cnt[0]),
        .I3(flag_sel),
        .I4(rd_addr_s[3]),
        .I5(rd_addr_s[2]),
        .O(sdio_out_i_14_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEAFAAA)) 
    sdio_out_i_2
       (.I0(sdio_out_i_7_n_0),
        .I1(wr_data_s[4]),
        .I2(sdio_out_i_8_n_0),
        .I3(wr_data_s[6]),
        .I4(bit_cnt[1]),
        .I5(bit_cnt[2]),
        .O(sdio_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAEAFAAA00000000)) 
    sdio_out_i_3
       (.I0(sdio_out_i_9_n_0),
        .I1(wr_data_s[0]),
        .I2(sdio_out_i_8_n_0),
        .I3(wr_data_s[2]),
        .I4(bit_cnt[1]),
        .I5(bit_cnt[2]),
        .O(sdio_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    sdio_out_i_4
       (.I0(byte_cnt[1]),
        .I1(byte_cnt[0]),
        .I2(sclk_i_4_n_0),
        .I3(sdio_out_i_10_n_0),
        .O(sdio_out1__0));
  LUT6 #(
    .INIT(64'hFCFFFAF0FCF0FAF0)) 
    sdio_out_i_5
       (.I0(sdio_out_i_11_n_0),
        .I1(sdio_out_i_12_n_0),
        .I2(sdio_out_i_13_n_0),
        .I3(bit_cnt[1]),
        .I4(bit_cnt[2]),
        .I5(sdio_out_i_14_n_0),
        .O(sdio_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sdio_out_i_6
       (.I0(sdio_out_i_10_n_0),
        .I1(sclk_i_4_n_0),
        .I2(byte_cnt[1]),
        .O(sdio_out_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08080C00)) 
    sdio_out_i_7
       (.I0(wr_data_s[5]),
        .I1(flag_sel),
        .I2(bit_cnt[0]),
        .I3(wr_data_s[7]),
        .I4(bit_cnt[1]),
        .O(sdio_out_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sdio_out_i_8
       (.I0(flag_sel),
        .I1(bit_cnt[0]),
        .O(sdio_out_i_8_n_0));
  LUT5 #(
    .INIT(32'h08080C00)) 
    sdio_out_i_9
       (.I0(wr_data_s[1]),
        .I1(flag_sel),
        .I2(bit_cnt[0]),
        .I3(wr_data_s[3]),
        .I4(bit_cnt[1]),
        .O(sdio_out_i_9_n_0));
  FDCE sdio_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(sdio_out_i_1_n_0),
        .Q(sdio_out));
  LUT4 #(
    .INIT(16'h0040)) 
    \user_rd_data[7]_i_1 
       (.I0(byte_cnt[1]),
        .I1(byte_cnt[0]),
        .I2(p_5_in),
        .I3(flag_sel),
        .O(user_rd_data0));
  FDCE \user_rd_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[0]),
        .Q(user_rd_data[0]));
  FDCE \user_rd_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[1]),
        .Q(user_rd_data[1]));
  FDCE \user_rd_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[2]),
        .Q(user_rd_data[2]));
  FDCE \user_rd_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[3]),
        .Q(user_rd_data[3]));
  FDCE \user_rd_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[4]),
        .Q(user_rd_data[4]));
  FDCE \user_rd_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[5]),
        .Q(user_rd_data[5]));
  FDCE \user_rd_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[6]),
        .Q(user_rd_data[6]));
  FDCE \user_rd_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(user_rd_data0),
        .CLR(user_wr_vild_reg_0),
        .D(rd_data_s[7]),
        .Q(user_rd_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8888B888)) 
    user_rd_vild_i_1
       (.I0(user_rd_vild),
        .I1(flag_sel),
        .I2(p_5_in),
        .I3(byte_cnt[0]),
        .I4(byte_cnt[1]),
        .O(user_rd_vild_i_1_n_0));
  FDCE user_rd_vild_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(user_rd_vild_i_1_n_0),
        .Q(user_rd_vild));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h08FF0800)) 
    user_wr_vild_i_1
       (.I0(p_5_in),
        .I1(byte_cnt[0]),
        .I2(byte_cnt[1]),
        .I3(flag_sel),
        .I4(user_wr_vild),
        .O(user_wr_vild_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    user_wr_vild_i_2
       (.I0(s00_axi_aresetn),
        .O(user_wr_vild_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    user_wr_vild_i_3
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[2]),
        .I3(sclk_i_3_n_0),
        .O(p_5_in));
  FDCE user_wr_vild_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(user_wr_vild_reg_0),
        .D(user_wr_vild_i_1_n_0),
        .Q(user_wr_vild));
  FDCE \wr_addr_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [0]),
        .Q(wr_addr_s[0]));
  FDCE \wr_addr_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [1]),
        .Q(wr_addr_s[1]));
  FDCE \wr_addr_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [2]),
        .Q(wr_addr_s[2]));
  FDCE \wr_addr_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [3]),
        .Q(wr_addr_s[3]));
  FDCE \wr_addr_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [4]),
        .Q(wr_addr_s[4]));
  FDCE \wr_addr_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [5]),
        .Q(wr_addr_s[5]));
  FDCE \wr_addr_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg0_reg[6] [6]),
        .Q(wr_addr_s[6]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \wr_data_s[7]_i_1 
       (.I0(\wr_data_s[7]_i_2_n_0 ),
        .I1(\wr_data_s[7]_i_3_n_0 ),
        .I2(\wr_data_s[7]_i_4_n_0 ),
        .I3(\wr_data_s[7]_i_5_n_0 ),
        .I4(\wr_data_s[7]_i_6_n_0 ),
        .I5(\wr_data_s[7]_i_7_n_0 ),
        .O(user_wr_en));
  LUT4 #(
    .INIT(16'h0001)) 
    \wr_data_s[7]_i_10 
       (.I0(\wr_cmd_ff0_reg[31] [7]),
        .I1(\wr_cmd_ff0_reg[31] [6]),
        .I2(\wr_cmd_ff0_reg[31] [5]),
        .I3(\wr_cmd_ff0_reg[31] [4]),
        .O(\wr_data_s[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \wr_data_s[7]_i_11 
       (.I0(\wr_cmd_ff0_reg[31] [11]),
        .I1(\wr_cmd_ff0_reg[31] [10]),
        .I2(\wr_cmd_ff0_reg[31] [9]),
        .I3(\wr_cmd_ff0_reg[31] [8]),
        .O(\wr_data_s[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_12 
       (.I0(\wr_cmd_ff1_reg[31] [20]),
        .I1(\wr_cmd_ff1_reg[31] [21]),
        .I2(\wr_cmd_ff1_reg[31] [8]),
        .I3(\wr_cmd_ff1_reg[31] [5]),
        .O(\wr_data_s[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_13 
       (.I0(\wr_cmd_ff1_reg[31] [16]),
        .I1(\wr_cmd_ff1_reg[31] [17]),
        .I2(\wr_cmd_ff1_reg[31] [12]),
        .I3(\wr_cmd_ff1_reg[31] [9]),
        .O(\wr_data_s[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_14 
       (.I0(\wr_cmd_ff1_reg[31] [28]),
        .I1(\wr_cmd_ff1_reg[31] [29]),
        .I2(\wr_cmd_ff1_reg[31] [0]),
        .I3(\wr_cmd_ff1_reg[31] [13]),
        .O(\wr_data_s[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_15 
       (.I0(\wr_cmd_ff1_reg[31] [24]),
        .I1(\wr_cmd_ff1_reg[31] [25]),
        .I2(\wr_cmd_ff1_reg[31] [4]),
        .I3(\wr_cmd_ff1_reg[31] [1]),
        .O(\wr_data_s[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_data_s[7]_i_16 
       (.I0(\wr_cmd_ff1_reg[31] [15]),
        .I1(\wr_cmd_ff1_reg[31] [14]),
        .I2(\wr_cmd_ff1_reg[31] [11]),
        .I3(\wr_cmd_ff1_reg[31] [10]),
        .O(\wr_data_s[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_data_s[7]_i_17 
       (.I0(\wr_cmd_ff1_reg[31] [3]),
        .I1(\wr_cmd_ff1_reg[31] [2]),
        .I2(\wr_cmd_ff1_reg[31] [7]),
        .I3(\wr_cmd_ff1_reg[31] [6]),
        .O(\wr_data_s[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_data_s[7]_i_18 
       (.I0(\wr_cmd_ff1_reg[31] [23]),
        .I1(\wr_cmd_ff1_reg[31] [22]),
        .I2(\wr_cmd_ff1_reg[31] [19]),
        .I3(\wr_cmd_ff1_reg[31] [18]),
        .O(\wr_data_s[7]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_data_s[7]_i_19 
       (.I0(\wr_cmd_ff1_reg[31] [31]),
        .I1(\wr_cmd_ff1_reg[31] [30]),
        .I2(\wr_cmd_ff1_reg[31] [27]),
        .I3(\wr_cmd_ff1_reg[31] [26]),
        .O(\wr_data_s[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wr_data_s[7]_i_2 
       (.I0(\wr_cmd_ff0_reg[31] [19]),
        .I1(\wr_cmd_ff0_reg[31] [18]),
        .I2(\wr_cmd_ff0_reg[31] [17]),
        .I3(\wr_cmd_ff0_reg[31] [16]),
        .I4(\wr_data_s[7]_i_8_n_0 ),
        .O(\wr_data_s[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wr_data_s[7]_i_3 
       (.I0(\wr_cmd_ff0_reg[31] [27]),
        .I1(\wr_cmd_ff0_reg[31] [26]),
        .I2(\wr_cmd_ff0_reg[31] [25]),
        .I3(\wr_cmd_ff0_reg[31] [24]),
        .I4(\wr_data_s[7]_i_9_n_0 ),
        .O(\wr_data_s[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_data_s[7]_i_4 
       (.I0(\wr_cmd_ff0_reg[31] [2]),
        .I1(\wr_cmd_ff0_reg[31] [3]),
        .I2(\wr_cmd_ff0_reg[31] [0]),
        .I3(\wr_cmd_ff0_reg[31] [1]),
        .I4(\wr_data_s[7]_i_10_n_0 ),
        .O(\wr_data_s[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_data_s[7]_i_5 
       (.I0(\wr_cmd_ff0_reg[31] [12]),
        .I1(\wr_cmd_ff0_reg[31] [13]),
        .I2(\wr_cmd_ff0_reg[31] [14]),
        .I3(\wr_cmd_ff0_reg[31] [15]),
        .I4(\wr_data_s[7]_i_11_n_0 ),
        .O(\wr_data_s[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_6 
       (.I0(\wr_data_s[7]_i_12_n_0 ),
        .I1(\wr_data_s[7]_i_13_n_0 ),
        .I2(\wr_data_s[7]_i_14_n_0 ),
        .I3(\wr_data_s[7]_i_15_n_0 ),
        .O(\wr_data_s[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_data_s[7]_i_7 
       (.I0(\wr_data_s[7]_i_16_n_0 ),
        .I1(\wr_data_s[7]_i_17_n_0 ),
        .I2(\wr_data_s[7]_i_18_n_0 ),
        .I3(\wr_data_s[7]_i_19_n_0 ),
        .O(\wr_data_s[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_8 
       (.I0(\wr_cmd_ff0_reg[31] [20]),
        .I1(\wr_cmd_ff0_reg[31] [21]),
        .I2(\wr_cmd_ff0_reg[31] [22]),
        .I3(\wr_cmd_ff0_reg[31] [23]),
        .O(\wr_data_s[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wr_data_s[7]_i_9 
       (.I0(\wr_cmd_ff0_reg[31] [28]),
        .I1(\wr_cmd_ff0_reg[31] [29]),
        .I2(\wr_cmd_ff0_reg[31] [31]),
        .I3(\wr_cmd_ff0_reg[31] [30]),
        .O(\wr_data_s[7]_i_9_n_0 ));
  FDCE \wr_data_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [0]),
        .Q(wr_data_s[0]));
  FDCE \wr_data_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [1]),
        .Q(wr_data_s[1]));
  FDCE \wr_data_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [2]),
        .Q(wr_data_s[2]));
  FDCE \wr_data_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [3]),
        .Q(wr_data_s[3]));
  FDCE \wr_data_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [4]),
        .Q(wr_data_s[4]));
  FDCE \wr_data_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [5]),
        .Q(wr_data_s[5]));
  FDCE \wr_data_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [6]),
        .Q(wr_data_s[6]));
  FDCE \wr_data_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(user_wr_en),
        .CLR(user_wr_vild_reg_0),
        .D(\slv_reg1_reg[7]_0 [7]),
        .Q(wr_data_s[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
