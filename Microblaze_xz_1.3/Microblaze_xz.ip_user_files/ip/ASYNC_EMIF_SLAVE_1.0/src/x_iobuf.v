/*=====================================================
*****************************************************
design name     :x_iobuf
use             :XILINX IOBUF条件编译 控制设备类型、差分和单端形式的输入输出
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2021/6/18首次建立
****************************************************

*****************************************************
function-------->
    XILINX IOBUF条件编译 控制设备类型、差分和单端形式的输入输出    
*****************************************************

*****************************************************
clock------------>
无
*****************************************************
========================================================*/
module x_iobuf
#(
    parameter DATA_WIDTH   = 16         ,//数据总线宽度  （默认16）
    parameter FPGA_SERIES  = "7SERIRE"  ,//所运行的FPGA系列 可配置参数"7SERIRE" "5SERIRE" "4SERIRE"
    parameter PHYSICS_MODE = "DIFF"     ,//"DIFF":差分模式 "SINGLE"：单端模式  单端模式只接data_p端 data_n端悬空 
    parameter IOSTANDARD   = "BLVDS_25" ,// Specify the I/O standard
    parameter SLEW         = "SLOW"     ,// Specify the output slew rate
    parameter DRIVE        = 12         ,// Specify the output drive strength
    parameter CAPACITANCE  = "DONT_CARE",// "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
    parameter DIFF_TERM    = "FALSE"    ,//Differential Termination(Virtex-7 only)
    parameter IBUF_LOW_PWR = "TRUE"      //Low power="TRUE", Highest performance="FALSE"(Virtex-7 only)
)                                
(
    input  [DATA_WIDTH-1:0] data_out ,
    output [DATA_WIDTH-1:0] data_in  ,
    input  [DATA_WIDTH-1:0] data_t   ,
    
    inout  [DATA_WIDTH-1:0] data_p   ,
    inout  [DATA_WIDTH-1:0] data_n   
);


//++++++++++++++++++++++++++++++++++++++++++
//*************CUT OFF LINE*****************
//++++++++++++++++++++++++++++++++++++++++++
genvar n;
generate
    if( PHYSICS_MODE == "DIFF" )begin
    
         if( FPGA_SERIES  == "4SERIRE" )begin
             for(n=0;n<DATA_WIDTH;n=n+1)begin : x4serire_diff_iobufs
                IOBUFDS 
                #(
                    .CAPACITANCE ( CAPACITANCE ), // "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
                    .IOSTANDARD  ( IOSTANDARD  )  // Specify the I/O standard
                ) 
                IOBUFDS_inst 
                (
                    .O   ( data_in[n]   ), // Buffer output
                    .IO  ( data_p[n]    ), // Diff_p inout (connect directly to top-level port)
                    .IOB ( data_n[n]    ), // Diff_n inout (connect directly to top-level port)
                    .I   ( data_out[n]  ), // Buffer input
                    .T   ( data_t[n]    )  // 3-state enable input, high=input, low=output
                );
            end
        end 
        
        else if( FPGA_SERIES  == "5SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x5serire_diff_iobufs
                 IOBUFDS 
                #(
                    .IOSTANDARD ( IOSTANDARD ) // Specify the I/O standard
                ) 
                IOBUFDS_inst 
                (
                    .O   ( data_in[n]  ), // Buffer output
                    .IO  ( data_p[n]   ), // Diff_p inout (connect directly to top-level port)
                    .IOB ( data_n[n]   ), // Diff_n inout (connect directly to top-level port)
                    .I   ( data_out[n] ), // Buffer input
                    .T   ( data_t[n]   )  // 3-state enable input, high=input, low=output
                );
            end
        end 
        
        else if( FPGA_SERIES  == "7SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x7serire_diff_iobufs
                IOBUFDS 
                #(
                    .DIFF_TERM   ( DIFF_TERM    ), // Differential Termination ("TRUE"/"FALSE")
                    .IBUF_LOW_PWR( IBUF_LOW_PWR ), // Low Power - "TRUE", High Performance = "FALSE" 
                    .IOSTANDARD  ( IOSTANDARD   ), // Specify the I/O standard
                    .SLEW        ( SLEW         )  // Specify the output slew rate
                 ) 
                IOBUFDS_inst 
                (
                    .O      ( data_in[n]  ),   // Buffer output
                    .IO     ( data_p[n]   ),   // Diff_p inout (connect directly to top-level port)
                    .IOB    ( data_n[n]   ),   // Diff_n inout (connect directly to top-level port)
                    .I      ( data_out[n] ),   // Buffer input
                    .T      ( data_t[n]   )    // 3-state enable input, high=input, low=output
                );
            end
        end 
        
    end    
    else if( PHYSICS_MODE == "SINGLE" )begin
    
        if( FPGA_SERIES  == "4SERIRE" )begin    
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x4serire_single_iobufs            
                IOBUF 
                #(
                    .CAPACITANCE ( CAPACITANCE ), // "DONT_CARE". "LOW" or "NORMAL" (Virtex-4 only)
                    .DRIVE       ( DRIVE       ), // Specify the output drive strength
                    .IOSTANDARD  ( IOSTANDARD  ), // Specify the I/O standard
                    .SLEW        ( SLEW        )  // Specify the output slew rate
                ) 
                IOBUF_inst 
                (
                    .O  ( data_in[n]  ),  // Buffer output
                    .IO ( data_p[n]   ),  // Buffer inout port (connect directly to top-level port)
                    .I  ( data_out[n] ),  // Buffer input
                    .T  ( data_t[n]   )   // 3-state enable input, high=input, low=output
                );
            end
        end 
        
        else if( FPGA_SERIES  == "5SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x5serire_single_iobufs  
                IOBUF 
                #(
                    .DRIVE      ( DRIVE      ), // Specify the output drive strength
                    .IOSTANDARD ( IOSTANDARD ), // Specify the I/O standard
                    .SLEW       ( SLEW       )  // Specify the output slew rate
                ) 
                IOBUF_inst 
                (
                    .O  ( data_in[n]  ), // Buffer output
                    .IO ( data_p[n]   ), // Buffer inout port (connect directly to top-level port)
                    .I  ( data_out[n] ), // Buffer input
                    .T  ( data_t[n]   )  // 3-state enable input, high=input, low=output
                );
            end
        end 
        
        else if( FPGA_SERIES  == "7SERIRE" )begin
            for(n=0;n<DATA_WIDTH;n=n+1)begin : x7serire_single_iobufs  
                 IOBUF 
                #(
                   .DRIVE        ( DRIVE        ),  // Specify the output drive strength
                   .IBUF_LOW_PWR ( IBUF_LOW_PWR ),  // Low Power - "TRUE", High Performance = "FALSE" 
                   .IOSTANDARD   ( IOSTANDARD   ),  // Specify the I/O standard
                   .SLEW         ( SLEW         )   // Specify the output slew rate
                ) 
                IOBUF_inst 
                (
                   .O            ( data_in[n]  ),  // Buffer output
                   .IO           ( data_p[n]   ),  // Buffer inout port (connect directly to top-level port)
                   .I            ( data_out[n] ),  // Buffer input
                   .T            ( data_t[n]   )   // 3-state enable input, high=input, low=output
                );
            end
        end 
        
    end

endgenerate

endmodule