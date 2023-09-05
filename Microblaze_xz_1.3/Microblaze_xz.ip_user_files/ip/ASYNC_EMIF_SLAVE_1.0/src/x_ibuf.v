/*=====================================================
*****************************************************
design name     :x_ibuf
use             :XILINX IBUF�������� �����豸���͡���ֺ͵�����ʽ������
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2021/6/18�״ν���
****************************************************

*****************************************************
function-------->
    XILINX IBUF�������� �����豸���͡���ֺ͵�����ʽ������    
*****************************************************

*****************************************************
CLOCK------------>
��
*****************************************************
========================================================*/

module x_ibuf
#(
    parameter DATA_WIDTH   = 16          ,//�������߿��  ��Ĭ��16��
    parameter FPGA_SERIES  = "7SERIRE"   ,//�����е�FPGAϵ�� �����ò���"7SERIRE" "5SERIRE" "4SERIRE"
    parameter PHYSICS_MODE = "DIFF"      ,//"DIFF":���ģʽ "SINGLE"������ģʽ  ����ģʽֻ��data_p�� data_n������ 
    parameter IOSTANDARD   = "DEFAULT"   ,//Specify the input I/O standard
    parameter DIFF_TERM    = "FALSE"     ,//Differential Termination
    parameter IBUF_LOW_PWR = "TRUE"      ,//Low power="TRUE", Highest performance="FALSE"(Virtex-7 only)
    parameter CAPACITANCE  = "DONT_CARE"  //"LOW", "NORMAL", "DONT_CARE" (Virtex-4 only)
)                                
(
    output [DATA_WIDTH-1:0] data_in  ,

    input  [DATA_WIDTH-1:0] data_p   ,
    input  [DATA_WIDTH-1:0] data_n  
);

//++++++++++++++++++++++++++++++++++++++++++
//*************CUT OFF LINE*****************
//++++++++++++++++++++++++++++++++++++++++++

genvar n;
generate
    if( PHYSICS_MODE == "DIFF" )begin
    
         if( FPGA_SERIES  == "4SERIRE" )begin
             for(n=0;n<DATA_WIDTH;n=n+1)begin : x4serire_diff_ibufs         
                IBUFDS 
                #(
                    .CAPACITANCE ( CAPACITANCE ), // "LOW", "NORMAL", "DONT_CARE" (Virtex-4 only)
                    .DIFF_TERM   ( DIFF_TERM   ), // Differential Termination
                    .IOSTANDARD  ( IOSTANDARD  )   // Specify the input I/O standard
                ) 
                IBUFDS_inst 
                (
                    .O  ( data_in[n] ), // Buffer output
                    .I  ( data_p[n]  ), // Diff_p buffer input (connect directly to top-level port)
                    .IB ( data_n[n]  )  // Diff_n buffer input (connect directly to top-level port)
                );
            end
        end 
        
        else if( FPGA_SERIES  == "5SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x5serire_diff_ibufs                     
                IBUFDS 
                #(
                    .DIFF_TERM  ( DIFF_TERM  ), // Differential Termination (Virtex-5, Spartan-3E/3A)
                    .IOSTANDARD ( IOSTANDARD )  // Specify the input I/O standard
                ) 
                IBUFDS_inst 
                (
                    .O  ( data_in[n] ), // Buffer output
                    .I  ( data_p[n]  ), // Diff_p buffer input (connect directly to top-level port)
                    .IB ( data_n[n]  )  // Diff_n buffer input (connect directly to top-level port)
                );
            end
        end 
        
        else if( FPGA_SERIES  == "7SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x7serire_diff_ibufs
                IBUFDS
                #(
                    .DIFF_TERM    ( DIFF_TERM    ),  // Differential Termination
                    .IBUF_LOW_PWR ( IBUF_LOW_PWR ),  // Low power="TRUE", Highest performance="FALSE" 
                    .IOSTANDARD   ( IOSTANDARD   )   // Specify the input I/O standard
                ) 
                IBUFDS_inst 
                (
                    .O  ( data_in[n] ), // Buffer output
                    .I  ( data_p[n]  ), // Diff_p buffer input (connect directly to top-level port)
                    .IB ( data_n[n]  )  // Diff_n buffer input (connect directly to top-level port)
                );
            end
        end 
        
    end    
    else if( PHYSICS_MODE == "SINGLE" )begin
    
        if( FPGA_SERIES  == "4SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x4serire_single_ibufs
                IBUF 
                #(
                    .CAPACITANCE ( CAPACITANCE ), // "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
                    .IOSTANDARD  ( IOSTANDARD  )  // Specify the input I/O standard
                )
                IBUF_inst 
                (
                    .O ( data_in[n] ),     // Buffer output
                    .I ( data_p[n]  )      // Buffer input (connect directly to top-level port)
                );
            end
        end 
        
        else if( FPGA_SERIES  == "5SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x5serire_single_ibufs
                IBUF 
                #(
                    .IOSTANDARD( IOSTANDARD )  // Specify the input I/O standard
                )
                IBUF_inst 
                (
                    .O( data_in[n] ),  // Buffer output
                    .I( data_p[n]  )   // Buffer input (connect directly to top-level port)
                );
            end
        end 
        
        else if( FPGA_SERIES  == "7SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x7serire_single_ibufs
                IBUF 
                #(
                    .IBUF_LOW_PWR ( IBUF_LOW_PWR ),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards 
                    .IOSTANDARD   ( IOSTANDARD   )   // Specify the input I/O standard
                ) 
                IBUF_inst 
                (
                    .O ( data_in[n] ), // Buffer output
                    .I ( data_p[n]  )  // Buffer input (connect directly to top-level port)
                );    
            end
        end 
        
    end 
    
endgenerate

endmodule
