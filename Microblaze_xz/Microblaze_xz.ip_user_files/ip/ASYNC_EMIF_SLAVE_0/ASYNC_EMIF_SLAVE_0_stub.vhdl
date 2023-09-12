-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Sep  8 09:45:38 2023
-- Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/86183/Desktop/Microblaze_xzjddy/ASYNC_EMIF_SLAVE_0/ASYNC_EMIF_SLAVE_0_stub.vhdl
-- Design      : ASYNC_EMIF_SLAVE_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ASYNC_EMIF_SLAVE_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    user_wr_en : out STD_LOGIC;
    user_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    user_wr_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    user_rd_en : out STD_LOGIC;
    user_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    user_rd_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_wr_vild : out STD_LOGIC;
    user_rd_vild : out STD_LOGIC;
    async_emif_cs_n_p : in STD_LOGIC;
    async_emif_cs_n_n : in STD_LOGIC;
    async_emif_wr_n_p : in STD_LOGIC;
    async_emif_wr_n_n : in STD_LOGIC;
    async_emif_rd_n_p : in STD_LOGIC;
    async_emif_rd_n_n : in STD_LOGIC;
    async_emif_addr_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    async_emif_addr_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    async_emif_data_p : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    async_emif_data_n : inout STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end ASYNC_EMIF_SLAVE_0;

architecture stub of ASYNC_EMIF_SLAVE_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,user_wr_en,user_wr_addr[7:0],user_wr_data[15:0],user_rd_en,user_rd_addr[7:0],user_rd_data[15:0],user_wr_vild,user_rd_vild,async_emif_cs_n_p,async_emif_cs_n_n,async_emif_wr_n_p,async_emif_wr_n_n,async_emif_rd_n_p,async_emif_rd_n_n,async_emif_addr_p[7:0],async_emif_addr_n[7:0],async_emif_data_p[15:0],async_emif_data_n[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "async_emif_slave,Vivado 2018.2";
begin
end;
