//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Aug 28 15:27:47 2023
//Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
//Command     : generate_target top_xz_wrapper.bd
//Design      : top_xz_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_xz_wrapper
(   
    clk_in1,
    csb_0,
    csb_1,
    // dir_0,
    // dir_1,
    gpio_tri_o,
    sclk_0,
    sclk_1,
    sdio_0,
    sdio_1
);

input clk_in1;
output csb_0;
output csb_1;
// output dir_0;
// output dir_1;
output [0:0]gpio_tri_o;
output sclk_0;
output sclk_1;
inout sdio_0;
inout sdio_1;

wire clk_in1;
wire csb_0;
wire csb_1;
wire dcm_clock_0;
wire dcm_locked_0;
wire dir_0;
wire dir_1;
wire [0:0]gpio_tri_o;
wire sclk_0;
wire sclk_1;
wire sdio_0;
wire sdio_1;
  
clk_wiz_0 U1
(
    .clk_out1   ( dcm_clock_0   ), // output clk_out1
    .locked     ( dcm_locked_0  ), // output locked
    .clk_in1    ( clk_in1       )  // input clk_in1
);

top_xz top_xz_i
(
    .csb_0(csb_0),
    .csb_1(csb_1),
    .dcm_clock_0(dcm_clock_0),
    .dcm_locked_0(dcm_locked_0),
    .dir_0(dir_0),
    .dir_1(dir_1),
    .gpio_tri_o(gpio_tri_o),
    .sclk_0(sclk_0),
    .sclk_1(sclk_1),
    .sdio_0(sdio_0),
    .sdio_1(sdio_1)
);

endmodule
