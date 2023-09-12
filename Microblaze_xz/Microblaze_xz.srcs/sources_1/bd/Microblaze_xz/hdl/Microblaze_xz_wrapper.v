//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Sep  7 14:12:37 2023
//Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
//Command     : generate_target Microblaze_xz_wrapper.bd
//Design      : Microblaze_xz_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Microblaze_xz_wrapper
   (csb_0,
    dcm_clock,
    dcm_locked,
    dir_0,
    dir_1,
    gpio_rtl_0_tri_o,
    gpio_rtl_1_tri_o,
    rst_spi_pin_0,
    scb_0,
    sclk_0,
    sclk_1,
    sdio_0,
    sdio_1,
    user_rd_vild_0,
    user_wr_vild_0);
  output csb_0;
  input dcm_clock;
  input dcm_locked;
  output dir_0;
  output dir_1;
  output [0:0]gpio_rtl_0_tri_o;
  output [0:0]gpio_rtl_1_tri_o;
  output rst_spi_pin_0;
  output scb_0;
  output sclk_0;
  output sclk_1;
  inout sdio_0;
  inout sdio_1;
  output user_rd_vild_0;
  output user_wr_vild_0;

  wire csb_0;
  wire dcm_clock;
  wire dcm_locked;
  wire dir_0;
  wire dir_1;
  wire [0:0]gpio_rtl_0_tri_o;
  wire [0:0]gpio_rtl_1_tri_o;
  wire rst_spi_pin_0;
  wire scb_0;
  wire sclk_0;
  wire sclk_1;
  wire sdio_0;
  wire sdio_1;
  wire user_rd_vild_0;
  wire user_wr_vild_0;

  Microblaze_xz Microblaze_xz_i
       (.csb_0(csb_0),
        .dcm_clock(dcm_clock),
        .dcm_locked(dcm_locked),
        .dir_0(dir_0),
        .dir_1(dir_1),
        .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o),
        .gpio_rtl_1_tri_o(gpio_rtl_1_tri_o),
        .rst_spi_pin_0(rst_spi_pin_0),
        .scb_0(scb_0),
        .sclk_0(sclk_0),
        .sclk_1(sclk_1),
        .sdio_0(sdio_0),
        .sdio_1(sdio_1),
        .user_rd_vild_0(user_rd_vild_0),
        .user_wr_vild_0(user_wr_vild_0));
endmodule
