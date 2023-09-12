/*=====================================================
*****************************************************
design name     :x_obuf
use             :XILINX OBUF�������� �����豸���͡���ֺ͵�����ʽ�ĵ����
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2021/6/18�״ν���
****************************************************

*****************************************************
function-------->
    XILINX OBUF�������� �����豸���͡���ֺ͵�����ʽ����� 
*****************************************************

*****************************************************
CLOCK------------>
��
*****************************************************
========================================================*/

module x_obuf
#(
    parameter DATA_WIDTH   = 16          ,//�������߿��  ��Ĭ��16��
    parameter FPGA_SERIES  = "7SERIRE"   ,//�����е�FPGAϵ�� �����ò���"7SERIRE" "5SERIRE" "4SERIRE"
    parameter PHYSICS_MODE = "DIFF"      ,//"DIFF":���ģʽ "SINGLE"������ģʽ  ����ģʽֻ��data_p�� data_n������
    parameter IOSTANDARD   = "DEFAULT"   ,// Specify the I/O standard
    parameter SLEW         = "SLOW"      ,// Specify the output slew rate
    parameter DRIVE        = 12          ,// Specify the output drive strength
    parameter CAPACITANCE  = "DONT_CARE"  // "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
)                                
(
    input  [DATA_WIDTH-1:0] data_out ,

    output [DATA_WIDTH-1:0] data_p   ,
    output [DATA_WIDTH-1:0] data_n  
);

//++++++++++++++++++++++++++++++++++++++++++
//*************CUT OFF LINE*****************
//++++++++++++++++++++++++++++++++++++++++++

genvar n;
generate
    if( PHYSICS_MODE == "DIFF" )begin
    
         if( FPGA_SERIES  == "4SERIRE" )begin
             for(n=0;n<DATA_WIDTH;n=n+1)begin : x4serire_diff_obufs
                OBUFDS
                #(
                    .CAPACITANCE ( CAPACITANCE ), // "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
                    .IOSTANDARD  ( IOSTANDARD  )  // Specify the output I/O standard
                ) 
                OBUFDS_inst 
                (
                    .O  ( data_p[n]   ), // Diff_p output (connect directly to top-level port)
                    .OB ( data_n[n]   ), // Diff_n output (connect directly to top-level port)
                    .I  ( data_out[n] )  // Buffer input 
                );
            end
        end 
        
        else if( FPGA_SERIES  == "5SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x5serire_diff_obufs            
                OBUFDS 
                #(
                    .IOSTANDARD ( IOSTANDARD ) // Specify the output I/O standard
                ) 
                OBUFDS_inst 
                (
                    .O  ( data_p[n]   ),   // Diff_p output (connect directly to top-level port)
                    .OB ( data_n[n]   ),   // Diff_n output (connect directly to top-level port)
                    .I  ( data_out[n] )    // Buffer input 
                );
            end
        end 
        
        else if( FPGA_SERIES  == "7SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x7serire_diff_obufs            
                OBUFDS 
                #(
                    .IOSTANDARD ( IOSTANDARD ), // Specify the output I/O standard
                    .SLEW       ( SLEW       )  // Specify the output slew rate
                ) 
                OBUFDS_inst 
                (
                    .O  ( data_p[n]   ), // Diff_p output (connect directly to top-level port)
                    .OB ( data_n[n]   ), // Diff_n output (connect directly to top-level port)
                    .I  ( data_out[n] )  // Buffer input 
                );
            end
        end 
        
    end    
    else if( PHYSICS_MODE == "SINGLE" )begin
       
        if( FPGA_SERIES  == "4SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x4serire_single_obufs
               OBUF 
               #(
                    .CAPACITANCE ( CAPACITANCE ), // "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
                    .DRIVE       ( DRIVE       ), // Specify the output drive strength
                    .IOSTANDARD  ( IOSTANDARD  ), // Specify the output I/O standard
                    .SLEW        ( SLEW        )  // Specify the output slew rate 
                ) 
                OBUF_inst 
                (
                    .O ( data_p[n]   ),     // Buffer output (connect directly to top-level port)
                    .I ( data_out[n] )      // Buffer input 
                );
            end
        end 
        
        else if( FPGA_SERIES  == "5SERIRE" )begin
             for(n=0;n<DATA_WIDTH;n=n+1)begin : x5serire_single_obufs
                OBUF 
                #(
                    .DRIVE      ( DRIVE      ), // Specify the output drive strength
                    .IOSTANDARD ( IOSTANDARD ), // Specify the output I/O standard
                    .SLEW       ( SLEW       )  // Specify the output slew rate
                ) 
                OBUF_inst 
                (
                    .O ( data_p[n]   ), // Buffer output (connect directly to top-level port)
                    .I ( data_out[n] )  // Buffer input 
                );
            end
        end
        
        else if( FPGA_SERIES  == "7SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x7serire_single_obufs
                OBUF 
                #(
                    .DRIVE      ( DRIVE      ), // Specify the output drive strength
                    .IOSTANDARD ( IOSTANDARD ), // Specify the output I/O standard
                    .SLEW       ( SLEW       )  // Specify the output slew rate
                ) 
                OBUF_inst 
                (
                    .O ( data_p[n]   ), // Buffer output (connect directly to top-level port)
                    .I ( data_out[n] )  // Buffer input 
                );           
            end
        end
 
    end 
    
endgenerate

endmodule
