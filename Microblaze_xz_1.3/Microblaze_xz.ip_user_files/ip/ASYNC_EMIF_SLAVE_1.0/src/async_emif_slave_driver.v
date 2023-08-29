/*=====================================================
*****************************************************
design name     :async_emif_slave_driver
use             :异步EMIF总线（从设备）驱动
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2021/6/21 首次建立
****************************************************

*****************************************************
function-------->
    异步EMIF总线从设备驱动      
*****************************************************

*****************************************************
CLOCK------------>
clk 单时钟域
*****************************************************
========================================================*/

module async_emif_slave_driver
#(
    parameter WR_SAMPLING_LOC  = 5           ,//写入采样点位置5(默认)
    parameter RD_SAMPLING_LOC  = 2           ,//读出采样点位置2(默认)
    parameter RD_VILD_LOC      = 11          ,//读出完成点位置11(默认)
    parameter ADDR_WIDTH       = 5           ,//地址总线宽度  （默认5）
    parameter DATA_WIDTH       = 16           //数据总线宽度  （默认16）
)
(
    input                        clk                 ,
    input                        rst_n               ,

    output reg                   user_wr_en          ,
    output reg  [ADDR_WIDTH-1:0] user_wr_addr        ,
    output reg  [DATA_WIDTH-1:0] user_wr_data        ,

    output reg                   user_rd_en          ,
    output reg  [ADDR_WIDTH-1:0] user_rd_addr        ,
    input       [DATA_WIDTH-1:0] user_rd_data        ,
    
    output reg                   user_wr_vild        ,
    output reg                   user_rd_vild        ,

    input                        async_emif_cs_n     ,
    input                        async_emif_wr_n     ,
    input                        async_emif_rd_n     ,
    input       [ADDR_WIDTH-1:0] async_emif_addr     ,
    input       [DATA_WIDTH-1:0] async_emif_data_in  ,
    output      [DATA_WIDTH-1:0] async_emif_data_out ,
    output      [DATA_WIDTH-1:0] async_emif_data_t    
);

//==========================================
//************SAMPLING cnt define***********
reg [15:0] samp_cnt ;
reg        flag_sel ;
//==========================================

//==========================================
//*****************WR define****************
wire wr_sampling_site ;
//==========================================

//==========================================
//*****************RD define****************
wire rd_sampling_site ;
//==========================================

//++++++++++++++++++++++++++++++++++++++++++
//*************CUT OFF LINE*****************
//++++++++++++++++++++++++++++++++++++++++++


//==========================================
//*************SAMPLING cnt code************
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        samp_cnt <= 0;
    end
    else if( async_emif_cs_n )begin
        samp_cnt <= 0;
    end
    else begin
        samp_cnt <= samp_cnt + 1;
    end 
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        flag_sel <= 0;
    end
    else if( !async_emif_cs_n  )begin
        if( !async_emif_wr_n )begin
            flag_sel <= 1;           //写
        end 
        else if( !async_emif_rd_n )begin
            flag_sel <= 0;           //读
        end 
    end 
end
//==========================================

//==========================================
//*****************WR code******************

assign wr_sampling_site = ( async_emif_wr_n == 0 ) && ( samp_cnt == WR_SAMPLING_LOC );

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_wr_en <= 0;
    end
    else if( wr_sampling_site )begin
        user_wr_en <= 1;
    end
    else begin
        user_wr_en <= 0;
    end 
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_wr_addr <= 0;
    end
     else if( wr_sampling_site )begin
        user_wr_addr <= async_emif_addr ;
    end
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_wr_data <= 0;
    end
     else if( wr_sampling_site )begin
        user_wr_data <= async_emif_data_in ;
    end
end
//==========================================

//==========================================
//*****************RD code******************
assign rd_sampling_site = ( async_emif_rd_n == 0 ) && ( samp_cnt == RD_SAMPLING_LOC );

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_rd_en <= 0;
    end
    else if( rd_sampling_site )begin
        user_rd_en <= 1;
    end
    else begin
        user_rd_en <= 0;
    end 
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_rd_addr <= 0 ;
    end
    else if( rd_sampling_site )begin
        user_rd_addr <= async_emif_addr ;
    end
end


assign async_emif_data_out = user_rd_data ;

//==========================================

//==========================================
//*************async_emif_data_t************
genvar n;

generate 
    for(n=0;n<DATA_WIDTH;n=n+1)begin : t_iobuf
        assign async_emif_data_t[n] = ( !async_emif_cs_n ) && ( ( !async_emif_rd_n ) || ( !flag_sel ) )  ? 0:1 ; 
    end 
endgenerate 
//==========================================

//user_wr_vild
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_wr_vild <= 0;
    end
    else begin
        user_wr_vild <= user_wr_en ;
    end
end

//user_rd_vild
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_rd_vild <= 0;
    end
    else if( ( flag_sel == 0 ) &&  ( samp_cnt == RD_VILD_LOC ) )begin
        user_rd_vild <= 1; 
    end
    else begin
        user_rd_vild <= 0;
    end 
end


endmodule
