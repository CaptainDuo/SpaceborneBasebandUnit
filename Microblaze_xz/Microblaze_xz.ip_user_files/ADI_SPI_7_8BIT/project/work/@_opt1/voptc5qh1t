library verilog;
use verilog.vl_types.all;
entity adi_spi_driver_7_8bit is
    generic(
        CLK_FRE         : integer := 100000000;
        SCLK_FRE        : integer := 1000000
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        user_wr_en      : in     vl_logic;
        user_wr_addr    : in     vl_logic_vector(6 downto 0);
        user_wr_data    : in     vl_logic_vector(7 downto 0);
        user_rd_en      : in     vl_logic;
        user_rd_addr    : in     vl_logic_vector(6 downto 0);
        user_rd_data    : out    vl_logic_vector(7 downto 0);
        user_op_busy    : out    vl_logic;
        user_wr_vild    : out    vl_logic;
        user_rd_vild    : out    vl_logic;
        rst_spi_pin     : out    vl_logic;
        scb             : out    vl_logic;
        sclk            : out    vl_logic;
        sdio            : inout  vl_logic;
        dir             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_FRE : constant is 1;
    attribute mti_svvh_generic_type of SCLK_FRE : constant is 1;
end adi_spi_driver_7_8bit;
