/*=====================================================
*****************************************************
design name     :async_emif_slave
use             :�첽EMIF���ߣ����豸��
engineer        :BIT-FPGA
version         :V0.1
change note     :
V0.1            :2021/6/22 
****************************************************

*****************************************************
function-------->
    �첽EMIF���ߴ��豸    
*****************************************************

*****************************************************
CLOCK------------>
clk ��ʱ����
*****************************************************
========================================================*/

module async_emif_slave
#(
    parameter WR_SAMPLING_LOC  = 5        ,//д�������λ��5(Ĭ��)
    parameter RD_SAMPLING_LOC  = 2        ,//����������λ��2(Ĭ��)
    parameter RD_VILD_LOC      = 11       ,//������ɵ�λ��11(Ĭ��)
    parameter ADDR_WIDTH       = 5        ,//��ַ���߿��  ��Ĭ��5��
    parameter DATA_WIDTH       = 16       ,//�������߿��  ��Ĭ��16��
    /////////////////BUF��������//////////////////////
    parameter FPGA_SERIES   = "7SERIRE"   ,//�����е�FPGAϵ�� �����ò���"7SERIRE" "5SERIRE" "4SERIRE"
    parameter PHYSICS_MODE  = "DIFF"      ,//"DIFF":���ģʽ "SINGLE"������ģʽ  ����ģʽֻ��p�� n������ 
    parameter IOSTANDARD    = "BLVDS_25"  ,//Specify the I/O standard                �����������ò������Դ�IO Planning�鿴
    parameter DRIVE         = 12          ,//Specify the output drive strength
    parameter SLEW          = "SLOW"      ,//Specify the output slew rate
    parameter DIFF_TERM     = "FALSE"     ,//Differential Termination ("TRUE"/"FALSE")      only 7series iobuf
    parameter IBUF_LOW_PWR  = "FALSE"     ,//Low Power - "TRUE", High Performance = "FALSE" only 7series iobuf
    parameter CAPACITANCE   = "DONT_CARE"  //"DONT_CARE". "LOW" or "NORMAL"                 only Virtex-4 
)
(
    input                        clk                 ,
    input                        rst_n               ,

    output                       user_wr_en          ,
    output      [ADDR_WIDTH-1:0] user_wr_addr        ,
    output      [DATA_WIDTH-1:0] user_wr_data        ,

    output                       user_rd_en          ,
    output      [ADDR_WIDTH-1:0] user_rd_addr        ,
    input       [DATA_WIDTH-1:0] user_rd_data        ,
              
    output                       user_wr_vild        ,
    output                       user_rd_vild        ,
    
    input                        async_emif_cs_n_p   ,
    input                        async_emif_cs_n_n   ,
    input                        async_emif_wr_n_p   ,
    input                        async_emif_wr_n_n   ,
    input                        async_emif_rd_n_p   ,
    input                        async_emif_rd_n_n   ,
              
    input      [ADDR_WIDTH-1:0]  async_emif_addr_p   ,
    input      [ADDR_WIDTH-1:0]  async_emif_addr_n   ,
    inout      [DATA_WIDTH-1:0]  async_emif_data_p   ,
    inout      [DATA_WIDTH-1:0]  async_emif_data_n   
);

//==========================================
//*******async_emif_slave_driver define****
wire                   async_emif_cs_n     ;
wire                   async_emif_wr_n     ;
wire                   async_emif_rd_n     ;
wire [ADDR_WIDTH-1:0]  async_emif_addr     ;
wire [DATA_WIDTH-1:0]  async_emif_data_out ;
wire [DATA_WIDTH-1:0]  async_emif_data_in  ;
wire [DATA_WIDTH-1:0]  async_emif_data_t   ;
//==========================================


//++++++++++++++++++++++++++++++++++++++++++
//*************CUT OFF LINE*****************
//++++++++++++++++++++++++++++++++++++++++++


//==========================================
//*******async_emif_master_driver code******

async_emif_slave_driver
#(
    .WR_SAMPLING_LOC  ( WR_SAMPLING_LOC ),//д�������λ��5(Ĭ��)
    .RD_SAMPLING_LOC  ( RD_SAMPLING_LOC ),//����������λ��2(Ĭ��)
    .RD_VILD_LOC      ( RD_VILD_LOC     ),//������ɵ�λ��11(Ĭ��)
    .ADDR_WIDTH       ( ADDR_WIDTH      ),//��ַ���߿��  ��Ĭ��5��
    .DATA_WIDTH       ( DATA_WIDTH      ) //�������߿��  ��Ĭ��16��
)
async_emif_slave_U1
(
    .clk                 ( clk                 ),
    .rst_n               ( rst_n               ),
 
    .user_wr_en          ( user_wr_en          ),
    .user_wr_addr        ( user_wr_addr        ),
    .user_wr_data        ( user_wr_data        ),

    .user_rd_en          ( user_rd_en          ),
    .user_rd_addr        ( user_rd_addr        ),
    .user_rd_data        ( user_rd_data        ),

    .user_wr_vild        ( user_wr_vild        ),
    .user_rd_vild        ( user_rd_vild        ),

    .async_emif_cs_n     ( async_emif_cs_n     ),
    .async_emif_wr_n     ( async_emif_wr_n     ),
    .async_emif_rd_n     ( async_emif_rd_n     ),
    .async_emif_addr     ( async_emif_addr     ),
    .async_emif_data_in  ( async_emif_data_in  ),
    .async_emif_data_out ( async_emif_data_out ),
    .async_emif_data_t   ( async_emif_data_t   ) 
);

//==========================================

//==========================================
//////////////IO�˿���//////////////////////

x_ibuf
#(
    .DATA_WIDTH   ( 1            ),
    .FPGA_SERIES  ( FPGA_SERIES  ),
    .PHYSICS_MODE ( PHYSICS_MODE ),
    .IOSTANDARD   ( IOSTANDARD   ),
    .DIFF_TERM    ( DIFF_TERM    ),
    .IBUF_LOW_PWR ( IBUF_LOW_PWR ),
    .CAPACITANCE  ( CAPACITANCE  ) 
)   
async_emif_slave_U2                
(
    .data_in  ( async_emif_cs_n   ),

    .data_p   ( async_emif_cs_n_p ),
    .data_n   ( async_emif_cs_n_n )
);

x_ibuf
#(
    .DATA_WIDTH   ( 1            ),
    .FPGA_SERIES  ( FPGA_SERIES  ),
    .PHYSICS_MODE ( PHYSICS_MODE ),
    .IOSTANDARD   ( IOSTANDARD   ),
    .DIFF_TERM    ( DIFF_TERM    ),
    .IBUF_LOW_PWR ( IBUF_LOW_PWR ),
    .CAPACITANCE  ( CAPACITANCE  ) 
)   
async_emif_slave_U3                
(
    .data_in  ( async_emif_wr_n   ),

    .data_p   ( async_emif_wr_n_p ),
    .data_n   ( async_emif_wr_n_n )
);


x_ibuf
#(
    .DATA_WIDTH   ( 1            ),
    .FPGA_SERIES  ( FPGA_SERIES  ),
    .PHYSICS_MODE ( PHYSICS_MODE ),
    .IOSTANDARD   ( IOSTANDARD   ),
    .DIFF_TERM    ( DIFF_TERM    ),
    .IBUF_LOW_PWR ( IBUF_LOW_PWR ),
    .CAPACITANCE  ( CAPACITANCE  ) 
)   
async_emif_slave_U4                
(
    .data_in  ( async_emif_rd_n   ),

    .data_p   ( async_emif_rd_n_p ),
    .data_n   ( async_emif_rd_n_n )
);

x_ibuf
#(
    .DATA_WIDTH   ( ADDR_WIDTH   ),
    .FPGA_SERIES  ( FPGA_SERIES  ),
    .PHYSICS_MODE ( PHYSICS_MODE ),
    .IOSTANDARD   ( IOSTANDARD   ),
    .DIFF_TERM    ( DIFF_TERM    ),
    .IBUF_LOW_PWR ( IBUF_LOW_PWR ),
    .CAPACITANCE  ( CAPACITANCE  ) 
)   
async_emif_slave_U5                
(
    .data_in  ( async_emif_addr   ),

    .data_p   ( async_emif_addr_p ),
    .data_n   ( async_emif_addr_n )
);

x_iobuf
#(
    .DATA_WIDTH   ( DATA_WIDTH   ),
    .FPGA_SERIES  ( FPGA_SERIES  ),
    .PHYSICS_MODE ( PHYSICS_MODE ),
    .IOSTANDARD   ( IOSTANDARD   ),
    .SLEW         ( SLEW         ),
    .DRIVE        ( DRIVE        ),
    .CAPACITANCE  ( CAPACITANCE  ),
    .DIFF_TERM    ( DIFF_TERM    ),
    .IBUF_LOW_PWR ( IBUF_LOW_PWR ) 
) 
async_emif_master_U6  
(
    .data_out ( async_emif_data_out ),
    .data_in  ( async_emif_data_in  ),
    .data_t   ( async_emif_data_t   ),

    .data_p   ( async_emif_data_p   ),
    .data_n   ( async_emif_data_n   )
);
//==========================================


endmodule
