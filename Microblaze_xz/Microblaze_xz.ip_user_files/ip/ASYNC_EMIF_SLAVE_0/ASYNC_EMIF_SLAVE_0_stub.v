// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Sep  8 09:45:38 2023
// Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/86183/Desktop/Microblaze_xzjddy/ASYNC_EMIF_SLAVE_0/ASYNC_EMIF_SLAVE_0_stub.v
// Design      : ASYNC_EMIF_SLAVE_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "async_emif_slave,Vivado 2018.2" *)
module ASYNC_EMIF_SLAVE_0(clk, rst_n, user_wr_en, user_wr_addr, 
  user_wr_data, user_rd_en, user_rd_addr, user_rd_data, user_wr_vild, user_rd_vild, 
  async_emif_cs_n_p, async_emif_cs_n_n, async_emif_wr_n_p, async_emif_wr_n_n, 
  async_emif_rd_n_p, async_emif_rd_n_n, async_emif_addr_p, async_emif_addr_n, 
  async_emif_data_p, async_emif_data_n)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,user_wr_en,user_wr_addr[7:0],user_wr_data[15:0],user_rd_en,user_rd_addr[7:0],user_rd_data[15:0],user_wr_vild,user_rd_vild,async_emif_cs_n_p,async_emif_cs_n_n,async_emif_wr_n_p,async_emif_wr_n_n,async_emif_rd_n_p,async_emif_rd_n_n,async_emif_addr_p[7:0],async_emif_addr_n[7:0],async_emif_data_p[15:0],async_emif_data_n[15:0]" */;
  input clk;
  input rst_n;
  output user_wr_en;
  output [7:0]user_wr_addr;
  output [15:0]user_wr_data;
  output user_rd_en;
  output [7:0]user_rd_addr;
  input [15:0]user_rd_data;
  output user_wr_vild;
  output user_rd_vild;
  input async_emif_cs_n_p;
  input async_emif_cs_n_n;
  input async_emif_wr_n_p;
  input async_emif_wr_n_n;
  input async_emif_rd_n_p;
  input async_emif_rd_n_n;
  input [7:0]async_emif_addr_p;
  input [7:0]async_emif_addr_n;
  inout [15:0]async_emif_data_p;
  inout [15:0]async_emif_data_n;
endmodule
