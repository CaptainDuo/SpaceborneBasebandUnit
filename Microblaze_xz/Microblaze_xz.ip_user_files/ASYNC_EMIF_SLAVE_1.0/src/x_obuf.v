/*=====================================================
*****************************************************
design name     :x_obuf
use             :XILINX OBUF条件编译 控制设备类型、差分和单端形式的的输出
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2021/6/18首次建立
****************************************************

*****************************************************
function-------->
    XILINX OBUF条件编译 控制设备类型、差分和单端形式的输出 
*****************************************************

*****************************************************
CLOCK------------>
无
*****************************************************
========================================================*/

module x_obuf
#(
    parameter DATA_WIDTH   = 16          ,//数据总线宽度  （默认16）
    parameter FPGA_SERIES  = "7SERIRE"   ,//所运行的FPGA系列 可配置参数"7SERIRE" "5SERIRE" "4SERIRE"
    parameter PHYSICS_MODE = "DIFF"      ,//"DIFF":差分模式 "SINGLE"：单端模式  单端模式只接data_p端 data_n端悬空
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
