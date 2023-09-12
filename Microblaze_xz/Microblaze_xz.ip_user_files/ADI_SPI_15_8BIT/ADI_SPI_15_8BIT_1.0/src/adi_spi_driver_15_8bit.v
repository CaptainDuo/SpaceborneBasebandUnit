/*=====================================================
*****************************************************
design name     :adi_spi_driver_15_8bit
use             :15BIT ADDR 8BIT DATA ������SPI����
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2022-3-15 �״ν��� 
V0.2            :2022-10-8 1.�������ִ�����������
                           2.���ӵ�ƽת��оƬ����������ţ�4245�ȣ�
****************************************************

*****************************************************
function-------->
    AD9680/AD9154/HM7043/HMC7044 SPI����
    15BIT ADDR 8BIT DATA ������SPI����
    ֧��ADI�������£�(��������֧�������б�)
    CLOCK BUFFER: AD9517 HM7043 HM7044
    AD:           AD9649 AD9680 AD9689
    DA:           AD9154 AD9172
*****************************************************

========================================================*/

module adi_spi_driver_15_8bit
#(    
    parameter CLK_FRE       = 100_000_000  ,  //����ʱ��Ƶ������
    parameter SCLK_FRE      = 1_000_000       //SPI����ʱ��Ƶ��
)
(
    input				clk          ,
    input             	rst_n        ,
    
    input             	user_wr_en   ,
    input      [14:0]   user_wr_addr ,
    input      [7:0]  	user_wr_data ,
    
    input 			    user_rd_en   ,
    input      [14:0]   user_rd_addr ,
    output reg [7:0]	user_rd_data ,    
    
    output				user_op_busy ,         
    
    output reg			csb          ,
    output reg			sclk         ,    
    inout				sdio         ,
    output              dir
);

//==========================================
//******************define******************
localparam SCLK_FRE_PARAM = CLK_FRE / SCLK_FRE ;

reg [14:0] wr_addr_s ; //д��ַ����
reg [7:0]  wr_data_s ; //д���ݻ���

reg [14:0] rd_addr_s ; //����ַ����
reg [7:0]  rd_data_s ; //�����ݻ���


reg [15:0]  baud_cnt     ;  //�����ʼ�����
wire        add_baud_cnt ;  
wire        end_baud_cnt ;

reg [2:0]   bit_cnt      ; //λ������
wire        add_bit_cnt  ;
wire        end_bit_cnt  ;

reg [1:0]   byte_cnt     ; //�ֽڼ�����
wire        add_byte_cnt ;
wire        end_byte_cnt ;

wire [7:0]  byte1;   //�����ֽ�1
wire [7:0]  byte2;   //�����ֽ�2
wire [7:0]  byte3;   //�����ֽ�3

reg         flag_add; 
reg         flag_sel; 

reg         sdio_out;

reg         sdio_in_q1;
reg         sdio_in_q2;
//==========================================


//++++++++++++++++++++++++++++++++++++++++++
//*************CUT OFF LINE*****************
//++++++++++++++++++++++++++++++++++++++++++


//==========================================
//*******************code*******************
//д���ݻ��棨ֻ��WR_EN��Чʱ�������ݣ���ֹ�ϲ��߼�����
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        wr_addr_s <= 15'b0;
    end
    else if( user_wr_en )begin
        wr_addr_s <= user_wr_addr ;
    end
end

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        wr_data_s <= 8'b0;
    end
    else if( user_wr_en )begin
        wr_data_s <= user_wr_data ;
    end
end

//�����ݻ��棨ֻ��RD_EN��Чʱ�������ݣ���ֹ�ϲ��߼�����
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        rd_addr_s <= 15'b0;
    end
    else if( user_rd_en )begin
        rd_addr_s <= user_rd_addr ;
    end
end

//flag_add
always  @(posedge clk or negedge rst_n)begin
    if( rst_n == 1'b0 )begin
        flag_add <= 0;
    end
    else if ( user_wr_en || user_rd_en ) begin
        flag_add <= 1;
    end
    else if ( end_byte_cnt )begin
        flag_add <= 0;
    end
end

//flag_sel
always  @(posedge clk or negedge rst_n)begin
    if( rst_n == 1'b0 )begin
        flag_sel <= 0;
    end
    else if ( user_wr_en ) begin
        flag_sel <= 1;
    end
    else if ( user_rd_en )begin
        flag_sel <= 0;
    end
end

assign byte1 = flag_sel == 1 ? {1'b0 , wr_addr_s[14:8]} : {1'b1 , rd_addr_s[14:8]};
assign byte2 = flag_sel == 1 ? wr_addr_s[7:0] : rd_addr_s[7:0];
assign byte3 = flag_sel == 1 ? wr_data_s : 8'b0000_0000;

//�����ʼ�����
always @(posedge clk or negedge rst_n)begin
    if( !rst_n )begin
        baud_cnt <= 0;
    end
    else if( add_baud_cnt )begin
        if( end_baud_cnt )
            baud_cnt <= 0;
        else
            baud_cnt <= baud_cnt + 1;
    end
end

assign add_baud_cnt = flag_add == 1;       
assign end_baud_cnt = add_baud_cnt && baud_cnt == SCLK_FRE_PARAM - 1 ; 


//λ������
always @(posedge clk or negedge rst_n)begin
    if( !rst_n )begin
        bit_cnt <= 0;
    end
    else if( add_bit_cnt )begin
        if( end_bit_cnt )
            bit_cnt <= 0;
        else
            bit_cnt <= bit_cnt + 1;
    end
end

assign add_bit_cnt = end_baud_cnt ;       
assign end_bit_cnt = add_bit_cnt && bit_cnt == 8 - 1 ; 

//�ֽڼ�����
always @(posedge clk or negedge rst_n)begin
    if( !rst_n )begin
        byte_cnt <= 0;
    end
    else if( add_byte_cnt )begin
        if( end_byte_cnt )
            byte_cnt <= 0;
        else
            byte_cnt <= byte_cnt + 1;
    end
end

assign add_byte_cnt = end_bit_cnt ;       
assign end_byte_cnt = add_byte_cnt && byte_cnt == 3 -1 ; 


//-----------��������߼�����---------------

//csb
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        csb <= 1;
    end
    else begin
        csb <= ~flag_add;
    end
end

//sclk
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        sclk <= 0 ;
    end
    else if( add_baud_cnt && baud_cnt == SCLK_FRE_PARAM/2 -1 ) begin
        sclk <= 1 ;
    end
    else if( end_baud_cnt )begin
        sclk <= 0 ;
    end 
end

//sdio_in sdio_in_q1 sdio_in_q2
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        sdio_in_q1 <= 0;
        sdio_in_q2 <= 0;
    end
    else begin
        sdio_in_q1 <= sdio ;
        sdio_in_q2 <= sdio_in_q1 ;
    end
end

//sdio_out
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        sdio_out <= 0;
    end
    else if ( add_baud_cnt && baud_cnt == 1-1 && byte_cnt == 1-1 ) begin
        sdio_out <= byte1[7 - bit_cnt];
    end
    else if ( add_baud_cnt && baud_cnt == 1-1 && byte_cnt == 2-1 ) begin
        sdio_out <= byte2[7 - bit_cnt];
    end
    else if ( add_baud_cnt && baud_cnt == 1-1 && byte_cnt == 3-1 ) begin
        sdio_out <= byte3[7 - bit_cnt];
    end
end

//rd_data_s
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        rd_data_s <= 0;
    end
    else if(add_baud_cnt && baud_cnt == SCLK_FRE_PARAM/2 + 1 && flag_sel == 0 && byte_cnt == 3-1 ) begin
        rd_data_s[7-bit_cnt] <= sdio_in_q2 ;
    end
end

//user_rd_data
always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        user_rd_data <= 0;
    end
    else if( (flag_sel == 0) && (end_byte_cnt) ) begin
        user_rd_data <= rd_data_s;
    end
end

//sdio
assign sdio = (flag_add == 1 && flag_sel == 1) || ( flag_add == 1 && flag_sel == 0 && byte_cnt != 3-1 )  ? sdio_out : 1'bz;

//dir
assign dir = (flag_add == 1 && flag_sel == 1) || ( flag_add == 1 && flag_sel == 0 && byte_cnt != 3-1 )  ? 1 : 0;

//user_op_busy
assign user_op_busy = flag_add;

//==========================================

endmodule