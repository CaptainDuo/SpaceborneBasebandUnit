//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Sep  4 15:10:02 2023
//Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
//Command     : generate_target Microblaze_xz_wrapper.bd
//Design      : Microblaze_xz_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Microblaze_xz_wrapper
(
    input           clk_in1          ,
    output [0:0]    gpio_rtl_0_tri_o ,//ad9649_MODE管脚
    output [0:0]    gpio_rtl_1_tri_o ,//ad9781_RESET管脚
    //ad9649
    output          csb_0            ,
    output          sclk_0           ,
    inout           sdio_0           ,
    //ad9781
    output          csb_1            ,
    output          sclk_1           ,
    inout           sdio_1           ,
    //EMIF接口
    input           async_emif_cs_n_p,
    // input           async_emif_cs_n_n,
    input           async_emif_wr_n_p,
    // input           async_emif_wr_n_n,
    input           async_emif_rd_n_p,
    // input           async_emif_rd_n_n,
    input  [7:0]    async_emif_addr_p,
    // input  [7:0]    async_emif_addr_n,
    inout  [15:0]   async_emif_data_p,
    // inout  [15:0]   async_emif_data_n,
    //标准寄存器接口
    // input  [15:0]   din              ,
    // output [15:0]   dout             ,
    //AD9649输入接口
    input           dco_ad9649       ,
    input  [13:0]   data_ad9649      ,
    //AD9781
    input           dco_ad9781_p     ,
    input           dco_ad9781_n     ,
    
    output          dci_ad9781_p     ,
    output          dci_ad9781_n     ,
    output [13:0]   data_ad9781_p    ,
    output [13:0]   data_ad9781_n    
);


wire        dcm_clock   ;
wire        dcm_locked  ;

wire        clk_ad9649  ;
wire        locked      ;

wire        user_wr_en  ;  
wire [31:0] user_wr_addr; 
wire [15:0] user_wr_data; 
wire        user_rd_en  ; 
wire [31:0] user_rd_addr; 
wire [15:0] user_rd_data; 
wire        user_wr_vild; 
wire        user_rd_vild;


clk_wiz_0 U1
(
    .clk_out1   ( dcm_clock     ),   // output clk_out1
    .locked     ( dcm_locked    ),   // output locked
    .clk_in1    ( clk_in1       )    // input clk_in1
);

clk_wiz_1 U2
(
    .clk_out1   ( clk_ad9649    ),  // output clk_out1
    .locked     ( locked        ),  // output locked
    .clk_in1    ( dco_ad9649    )   // input clk_in1
);

Microblaze_xz U3
(   
    .dcm_clock          ( dcm_clock         ),
    .dcm_locked         ( dcm_locked        ),
    .gpio_rtl_0_tri_o   ( gpio_rtl_0_tri_o  ),
    .gpio_rtl_1_tri_o   ( gpio_rtl_1_tri_o  ),
    //ad9649
    .csb_0              ( csb_0             ),
    .sclk_0             ( sclk_0            ),
    .sdio_0             ( sdio_0            ),
    .dir_0              (                   ),
    //ad9781
    .scb_0              ( csb_1             ),
    .sclk_1             ( sclk_1            ),
    .sdio_1             ( sdio_1            ),
    .user_rd_vild_0     (                   ),
    .user_wr_vild_0     (                   ),
    .dir_1              (                   ),
    .rst_spi_pin_0      (                   )
);

ASYNC_EMIF_SLAVE_0 U4 
(
    .clk                ( dcm_clock         ),  // input wire clk
    .rst_n              ( dcm_locked        ),  // input wire rst_n
    .user_wr_en         ( user_wr_en        ),  // output wire user_wr_en
    .user_wr_addr       ( user_wr_addr      ),  // output wire [7 : 0] user_wr_addr
    .user_wr_data       ( user_wr_data      ),  // output wire [15 : 0] user_wr_data
    .user_rd_en         ( user_rd_en        ),  // output wire user_rd_en
    .user_rd_addr       ( user_rd_addr      ),  // output wire [7 : 0] user_rd_addr
    .user_rd_data       ( user_rd_data      ),  // input wire [15 : 0] user_rd_data
    .user_wr_vild       ( user_wr_vild      ),  // output wire user_wr_vild
    .user_rd_vild       ( user_rd_vild      ),  // output wire user_rd_vild
    .async_emif_cs_n_p  ( async_emif_cs_n_p ),  // input wire async_emif_cs_n_p
    // .async_emif_cs_n_n  ( async_emif_cs_n_n ),  // input wire async_emif_cs_n_n
    .async_emif_wr_n_p  ( async_emif_wr_n_p ),  // input wire async_emif_wr_n_p
    // .async_emif_wr_n_n  ( async_emif_wr_n_n ),  // input wire async_emif_wr_n_n
    .async_emif_rd_n_p  ( async_emif_rd_n_p ),  // input wire async_emif_rd_n_p
    // .async_emif_rd_n_n  ( async_emif_rd_n_n ),  // input wire async_emif_rd_n_n
    .async_emif_addr_p  ( async_emif_addr_p ),  // input wire [7 : 0] async_emif_addr_p
    // .async_emif_addr_n  ( async_emif_addr_n ),  // input wire [7 : 0] async_emif_addr_n
    .async_emif_data_p  ( async_emif_data_p )   // inout wire [15 : 0] async_emif_data_p
    // .async_emif_data_n  ( async_emif_data_n )   // inout wire [15 : 0] async_emif_data_n
); 

//标准寄存器接口，需要根据实际情况修改
reg_block
#(
    .ADDR_WIDTH     ( 8             ),
    .DATA_WIDTH     ( 16            )
)
U5
(
    .clk            ( dcm_clock    ),
    .rst_n          ( dcm_locked   ),
    .user_wr_en     ( user_wr_en   ),
    .user_wr_addr   ( user_wr_addr ),
    .user_wr_data   ( user_wr_data ),
    .user_rd_en     ( user_rd_en   ),
    .user_rd_addr   ( user_rd_addr ),
    .user_rd_data   ( user_rd_data ),
    .user_wr_vild   ( user_wr_vild ),
    .user_rd_vild   ( user_rd_vild )
    // .din            ( din          ),
    // .dout           ( dout         )  
);

//ad9649输入数字信号处理
reg  [13:0] reg_data_ad9649;

always @(posedge clk_ad9649 or negedge dcm_locked )begin
    if( !dcm_locked )begin
        reg_data_ad9649 <= 0;
    end
    else if( locked )begin
        reg_data_ad9649 <= data_ad9649;
    end
end

endmodule
