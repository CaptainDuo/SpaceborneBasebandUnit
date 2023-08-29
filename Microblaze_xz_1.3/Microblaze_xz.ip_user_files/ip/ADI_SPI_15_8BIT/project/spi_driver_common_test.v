`timescale 1 ns/1 ns

module spi_driver_common_test();

//clock && rst
reg clk  ;
reg rst_n;

//uut input
reg         user_wr_en;
reg [14:0]  user_wr_addr;
reg [7:0 ]  user_wr_data;
reg         user_rd_en;
reg [14:0]  user_rd_addr;

//uut output
wire [7:0] user_rd_data;
wire       user_op_busy;
wire       csb;
wire       sclk;

// Bidirs
wire sdio;
wire dir ;

reg sdio_vlg ;

assign sdio = sdio_vlg ;

//clock cycle xxns Support for redefinition
parameter CYCLE    = 20;

//restet time
parameter RST_TIME = 3 ;

integer i;

//Component instantiation
adi_spi_driver_15_8bit 
#(
    .CLK_FRE       ( 50_000_000   ),  //输入时钟频率配置
    .SCLK_FRE      ( 1_000_000    )   //SPI总线时钟频率
)
uut 
(
	.clk          ( clk          ), 
	.rst_n        ( rst_n        ), 
    
	.user_wr_en   ( user_wr_en   ), 
	.user_wr_addr ( user_wr_addr ), 
	.user_wr_data ( user_wr_data ), 
    
	.user_rd_en   ( user_rd_en   ), 
	.user_rd_addr ( user_rd_addr ), 
	.user_rd_data ( user_rd_data ), 
	.user_op_busy ( user_op_busy ), 
    
	.csb          ( csb           ), 
	.sclk         ( sclk          ), 
	.sdio         ( sdio          ),
    .dir          ( dir           )
);


//generate clock
initial begin
    clk = 0;
    forever
    #(CYCLE/2)
    clk=~clk;
end

//generate rst_n
initial begin
    rst_n = 1;
    #2;
    rst_n = 0;
    #(CYCLE*RST_TIME);
    rst_n = 1;
end

//generate signal
initial begin
    #1;
    //initialization
    user_wr_en     = 0;
    user_wr_addr   = 15'h0;
    user_wr_data   = 8'h0;
    user_rd_en     = 0;
    user_rd_addr   = 15'h0;
    sdio_vlg  = 1'bz ;
    
    #(10*CYCLE);
    //generate
    user_wr_en     = 1;
    user_wr_addr   = 15'h55AA;
    user_wr_data   = 8'h55;
    #(1*CYCLE);
    user_wr_en     = 0;
    #(1500*CYCLE);
    
    user_rd_en     = 1;
    user_rd_addr   = 15'h55AA;
    #(1*CYCLE);
    user_rd_en     = 0;
    
    #(800*CYCLE);
    sdio_vlg  = 1'b0 ;
    for(i=0;i<8;i=i+1)begin  //产生一个数据0xAA
        sdio_vlg <= ~sdio_vlg;
         #(50*CYCLE);
    end

    #(300*CYCLE);
    
    $display("---------test finish--------------");
    $stop;
    

end

endmodule


