`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/04 15:56:42
// Design Name: 
// Module Name: reg_block
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reg_block
#(
    parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = 16
)
(
    input                       clk,
    input                       rst_n,
    
    input                       user_wr_en,
    input      [ADDR_WIDTH-1:0] user_wr_addr,
    input      [DATA_WIDTH-1:0] user_wr_data,
    
    input                       user_rd_en,
    input      [ADDR_WIDTH-1:0] user_rd_addr,
    output reg [DATA_WIDTH-1:0] user_rd_data,
    
    input                       user_wr_vild,
    input                       user_rd_vild
    
    // input      [DATA_WIDTH-1:0] din,
    // output reg [DATA_WIDTH-1:0] dout
);

//可读可写寄存器
//=====================================
reg [DATA_WIDTH-1:0] wr_reg0;
reg [DATA_WIDTH-1:0] wr_reg1;
reg [DATA_WIDTH-1:0] wr_reg2;
reg [DATA_WIDTH-1:0] wr_reg3;

reg [DATA_WIDTH-1:0] test_reg5;
reg [DATA_WIDTH-1:0] test_regA;

//只读寄存器
//=====================================
wire [DATA_WIDTH-1:0] rd_reg0;
wire [DATA_WIDTH-1:0] rd_reg1;
wire [DATA_WIDTH-1:0] rd_reg2;
wire [DATA_WIDTH-1:0] rd_reg3;

//wr_code
//=====================================
always @(posedge clk or negedge rst_n)begin
    if( !rst_n )begin
        test_reg5 <= 0;
        test_regA <= 0;
        wr_reg0 <= 0;
        wr_reg1 <= 0;
        wr_reg2 <= 0;
        wr_reg3 <= 0;
    end
    else if( user_wr_en )begin
        case( user_wr_addr )
            5'h00   : wr_reg0   <= user_wr_data;
            5'h01   : wr_reg1   <= user_wr_data;
            5'h02   : wr_reg2   <= user_wr_data;
            5'h03   : wr_reg3   <= user_wr_data;
            5'h10   : test_reg5 <= user_wr_data;
            5'h11   : test_regA <= user_wr_data;
            default :                          ;
        endcase
    end
end

//rd_code
//=====================================
always @(posedge clk or negedge rst_n)begin
    if( !rst_n )begin
        user_rd_data <= 0;
    end
    else if( user_rd_en )begin
        case( user_rd_addr )
            //**********可读可写寄存器回读区*************
            5'h00   : user_rd_data <= wr_reg0  ;
            5'h01   : user_rd_data <= wr_reg1  ;
            5'h02   : user_rd_data <= wr_reg2  ;
            5'h03   : user_rd_data <= wr_reg3  ;
            5'h10   : user_rd_data <= test_reg5;
            5'h11   : user_rd_data <= test_regA;
            //**********只读寄存器回读区*************
            5'h12   : user_rd_data <= rd_reg0  ;
            5'h13   : user_rd_data <= rd_reg1  ;
            5'h14   : user_rd_data <= rd_reg2  ;
            5'h15   : user_rd_data <= rd_reg3  ;
            
            default : user_rd_data <= 0        ;
        endcase
    end
end

//可读可写寄存器拆分区
//=====================================
// always @( posedge clk or negedge rst_n )begin
    // if( !rst_n )begin
        // dout <= 0;
    // end
    // else begin
        // dout <= wr_reg0;
    // end
// end

//只读寄存器组合区
//=====================================
// assign rd_reg0 = din;

endmodule
