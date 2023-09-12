-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep  4 15:11:11 2023
-- Host        : LAPTOP-DG1UIM4L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/86183/Desktop/Microblaze_xzjddy/Microblaze_xz_1.4/Microblaze_xz/Microblaze_xz.srcs/sources_1/bd/Microblaze_xz/ip/Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0/Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_sim_netlist.vhdl
-- Design      : Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_adi_spi_driver_15_8bit is
  port (
    csb : out STD_LOGIC;
    csb_reg_0 : out STD_LOGIC;
    sclk : out STD_LOGIC;
    dir : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sdio : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rd_cmd_ff0_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_cmd_ff1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \wr_cmd_ff0_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[0]\ : in STD_LOGIC;
    \slv_reg4_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg1_reg[1]\ : in STD_LOGIC;
    \slv_reg1_reg[2]\ : in STD_LOGIC;
    \slv_reg1_reg[3]\ : in STD_LOGIC;
    \slv_reg1_reg[4]\ : in STD_LOGIC;
    \slv_reg1_reg[5]\ : in STD_LOGIC;
    \slv_reg1_reg[6]\ : in STD_LOGIC;
    \slv_reg1_reg[7]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg1_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg3_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \slv_reg0_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_adi_spi_driver_15_8bit : entity is "adi_spi_driver_15_8bit";
end Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_adi_spi_driver_15_8bit;

architecture STRUCTURE of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_adi_spi_driver_15_8bit is
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \baud_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \baud_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \baud_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \baud_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \baud_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \baud_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \baud_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \baud_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \baud_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \baud_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \baud_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \baud_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \baud_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal baud_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \baud_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \baud_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal byte_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \byte_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal csb_i_1_n_0 : STD_LOGIC;
  signal \^csb_reg_0\ : STD_LOGIC;
  signal \^dir\ : STD_LOGIC;
  signal flag_add_i_1_n_0 : STD_LOGIC;
  signal flag_sel : STD_LOGIC;
  signal flag_sel_i_1_n_0 : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \rd_addr_s[14]_i_10_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_11_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_12_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_13_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_14_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_15_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_16_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_17_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_18_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_19_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_6_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_7_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_8_n_0\ : STD_LOGIC;
  signal \rd_addr_s[14]_i_9_n_0\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \rd_addr_s_reg_n_0_[9]\ : STD_LOGIC;
  signal rd_data_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rd_data_s1__1\ : STD_LOGIC;
  signal \rd_data_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_s[7]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_s[7]_i_4_n_0\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal sclk_i_2_n_0 : STD_LOGIC;
  signal sclk_i_3_n_0 : STD_LOGIC;
  signal sclk_i_4_n_0 : STD_LOGIC;
  signal sclk_i_5_n_0 : STD_LOGIC;
  signal sclk_i_6_n_0 : STD_LOGIC;
  signal sclk_i_7_n_0 : STD_LOGIC;
  signal sclk_i_8_n_0 : STD_LOGIC;
  signal sdio_in_q1 : STD_LOGIC;
  signal sdio_in_q2 : STD_LOGIC;
  signal sdio_out : STD_LOGIC;
  signal \sdio_out1__0\ : STD_LOGIC;
  signal sdio_out_i_10_n_0 : STD_LOGIC;
  signal sdio_out_i_12_n_0 : STD_LOGIC;
  signal sdio_out_i_13_n_0 : STD_LOGIC;
  signal sdio_out_i_14_n_0 : STD_LOGIC;
  signal sdio_out_i_15_n_0 : STD_LOGIC;
  signal sdio_out_i_16_n_0 : STD_LOGIC;
  signal sdio_out_i_17_n_0 : STD_LOGIC;
  signal sdio_out_i_18_n_0 : STD_LOGIC;
  signal sdio_out_i_19_n_0 : STD_LOGIC;
  signal sdio_out_i_1_n_0 : STD_LOGIC;
  signal sdio_out_i_2_n_0 : STD_LOGIC;
  signal sdio_out_i_3_n_0 : STD_LOGIC;
  signal sdio_out_i_5_n_0 : STD_LOGIC;
  signal sdio_out_i_6_n_0 : STD_LOGIC;
  signal sdio_out_i_7_n_0 : STD_LOGIC;
  signal sdio_out_i_8_n_0 : STD_LOGIC;
  signal sdio_out_i_9_n_0 : STD_LOGIC;
  signal user_op_busy : STD_LOGIC;
  signal user_rd_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal user_rd_data0 : STD_LOGIC;
  signal user_rd_en : STD_LOGIC;
  signal user_wr_en : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_addr_s_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_data_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wr_data_s[7]_i_10_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_11_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_12_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_13_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_14_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_15_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_16_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_17_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_18_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_19_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data_s[7]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_baud_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \byte_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \byte_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \byte_cnt[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of csb_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of dir_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_data_s[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sclk_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sclk_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sclk_i_8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sdio_out_i_13 : label is "soft_lutpair0";
begin
  csb_reg_0 <= \^csb_reg_0\;
  dir <= \^dir\;
  sclk <= \^sclk\;
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \slv_reg4_reg[7]\(0),
      I1 => user_op_busy,
      I2 => user_rd_data(0),
      I3 => sel0(0),
      I4 => sel0(1),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[1]\,
      I1 => \slv_reg4_reg[7]\(1),
      I2 => user_rd_data(1),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[2]\,
      I1 => \slv_reg4_reg[7]\(2),
      I2 => user_rd_data(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[3]\,
      I1 => \slv_reg4_reg[7]\(3),
      I2 => user_rd_data(3),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[4]\,
      I1 => \slv_reg4_reg[7]\(4),
      I2 => user_rd_data(4),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[5]\,
      I1 => \slv_reg4_reg[7]\(5),
      I2 => user_rd_data(5),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[6]\,
      I1 => \slv_reg4_reg[7]\(6),
      I2 => user_rd_data(6),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[7]\,
      I1 => \slv_reg4_reg[7]\(7),
      I2 => user_rd_data(7),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => D(7)
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_reg1_reg[0]\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => D(0),
      S => sel0(2)
    );
\baud_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(0),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[0]_i_2_n_0\
    );
\baud_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(3),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[0]_i_3_n_0\
    );
\baud_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(2),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[0]_i_4_n_0\
    );
\baud_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(1),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[0]_i_5_n_0\
    );
\baud_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => baud_cnt_reg(0),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[0]_i_6_n_0\
    );
\baud_cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(15),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[12]_i_2_n_0\
    );
\baud_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(14),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[12]_i_3_n_0\
    );
\baud_cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(13),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[12]_i_4_n_0\
    );
\baud_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(12),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[12]_i_5_n_0\
    );
\baud_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(7),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[4]_i_2_n_0\
    );
\baud_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(6),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[4]_i_3_n_0\
    );
\baud_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(5),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[4]_i_4_n_0\
    );
\baud_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(4),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[4]_i_5_n_0\
    );
\baud_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(11),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[8]_i_2_n_0\
    );
\baud_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(10),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[8]_i_3_n_0\
    );
\baud_cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(9),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[8]_i_4_n_0\
    );
\baud_cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_cnt_reg(8),
      I1 => sclk_i_3_n_0,
      O => \baud_cnt[8]_i_5_n_0\
    );
\baud_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[0]_i_1_n_7\,
      Q => baud_cnt_reg(0)
    );
\baud_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \baud_cnt_reg[0]_i_1_n_0\,
      CO(2) => \baud_cnt_reg[0]_i_1_n_1\,
      CO(1) => \baud_cnt_reg[0]_i_1_n_2\,
      CO(0) => \baud_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \baud_cnt[0]_i_2_n_0\,
      O(3) => \baud_cnt_reg[0]_i_1_n_4\,
      O(2) => \baud_cnt_reg[0]_i_1_n_5\,
      O(1) => \baud_cnt_reg[0]_i_1_n_6\,
      O(0) => \baud_cnt_reg[0]_i_1_n_7\,
      S(3) => \baud_cnt[0]_i_3_n_0\,
      S(2) => \baud_cnt[0]_i_4_n_0\,
      S(1) => \baud_cnt[0]_i_5_n_0\,
      S(0) => \baud_cnt[0]_i_6_n_0\
    );
\baud_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[8]_i_1_n_5\,
      Q => baud_cnt_reg(10)
    );
\baud_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[8]_i_1_n_4\,
      Q => baud_cnt_reg(11)
    );
\baud_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[12]_i_1_n_7\,
      Q => baud_cnt_reg(12)
    );
\baud_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \baud_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_baud_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \baud_cnt_reg[12]_i_1_n_1\,
      CO(1) => \baud_cnt_reg[12]_i_1_n_2\,
      CO(0) => \baud_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \baud_cnt_reg[12]_i_1_n_4\,
      O(2) => \baud_cnt_reg[12]_i_1_n_5\,
      O(1) => \baud_cnt_reg[12]_i_1_n_6\,
      O(0) => \baud_cnt_reg[12]_i_1_n_7\,
      S(3) => \baud_cnt[12]_i_2_n_0\,
      S(2) => \baud_cnt[12]_i_3_n_0\,
      S(1) => \baud_cnt[12]_i_4_n_0\,
      S(0) => \baud_cnt[12]_i_5_n_0\
    );
\baud_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[12]_i_1_n_6\,
      Q => baud_cnt_reg(13)
    );
\baud_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[12]_i_1_n_5\,
      Q => baud_cnt_reg(14)
    );
\baud_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[12]_i_1_n_4\,
      Q => baud_cnt_reg(15)
    );
\baud_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[0]_i_1_n_6\,
      Q => baud_cnt_reg(1)
    );
\baud_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[0]_i_1_n_5\,
      Q => baud_cnt_reg(2)
    );
\baud_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[0]_i_1_n_4\,
      Q => baud_cnt_reg(3)
    );
\baud_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[4]_i_1_n_7\,
      Q => baud_cnt_reg(4)
    );
\baud_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \baud_cnt_reg[0]_i_1_n_0\,
      CO(3) => \baud_cnt_reg[4]_i_1_n_0\,
      CO(2) => \baud_cnt_reg[4]_i_1_n_1\,
      CO(1) => \baud_cnt_reg[4]_i_1_n_2\,
      CO(0) => \baud_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \baud_cnt_reg[4]_i_1_n_4\,
      O(2) => \baud_cnt_reg[4]_i_1_n_5\,
      O(1) => \baud_cnt_reg[4]_i_1_n_6\,
      O(0) => \baud_cnt_reg[4]_i_1_n_7\,
      S(3) => \baud_cnt[4]_i_2_n_0\,
      S(2) => \baud_cnt[4]_i_3_n_0\,
      S(1) => \baud_cnt[4]_i_4_n_0\,
      S(0) => \baud_cnt[4]_i_5_n_0\
    );
\baud_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[4]_i_1_n_6\,
      Q => baud_cnt_reg(5)
    );
\baud_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[4]_i_1_n_5\,
      Q => baud_cnt_reg(6)
    );
\baud_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[4]_i_1_n_4\,
      Q => baud_cnt_reg(7)
    );
\baud_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[8]_i_1_n_7\,
      Q => baud_cnt_reg(8)
    );
\baud_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \baud_cnt_reg[4]_i_1_n_0\,
      CO(3) => \baud_cnt_reg[8]_i_1_n_0\,
      CO(2) => \baud_cnt_reg[8]_i_1_n_1\,
      CO(1) => \baud_cnt_reg[8]_i_1_n_2\,
      CO(0) => \baud_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \baud_cnt_reg[8]_i_1_n_4\,
      O(2) => \baud_cnt_reg[8]_i_1_n_5\,
      O(1) => \baud_cnt_reg[8]_i_1_n_6\,
      O(0) => \baud_cnt_reg[8]_i_1_n_7\,
      S(3) => \baud_cnt[8]_i_2_n_0\,
      S(2) => \baud_cnt[8]_i_3_n_0\,
      S(1) => \baud_cnt[8]_i_4_n_0\,
      S(0) => \baud_cnt[8]_i_5_n_0\
    );
\baud_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_op_busy,
      CLR => \^csb_reg_0\,
      D => \baud_cnt_reg[8]_i_1_n_6\,
      Q => baud_cnt_reg(9)
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sclk_i_3_n_0,
      I1 => bit_cnt(0),
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => sclk_i_3_n_0,
      I2 => bit_cnt(1),
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => bit_cnt(1),
      I2 => sclk_i_3_n_0,
      I3 => bit_cnt(2),
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => bit_cnt(0)
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => bit_cnt(1)
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => bit_cnt(2)
    );
\byte_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => byte_cnt(1),
      I1 => p_5_in,
      I2 => byte_cnt(0),
      O => \byte_cnt[0]_i_1_n_0\
    );
\byte_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => byte_cnt(0),
      I1 => p_5_in,
      I2 => byte_cnt(1),
      O => \byte_cnt[1]_i_1_n_0\
    );
\byte_cnt[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => bit_cnt(1),
      I2 => bit_cnt(2),
      I3 => sclk_i_3_n_0,
      O => p_5_in
    );
\byte_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \byte_cnt[0]_i_1_n_0\,
      Q => byte_cnt(0)
    );
\byte_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \byte_cnt[1]_i_1_n_0\,
      Q => byte_cnt(1)
    );
csb_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => user_op_busy,
      O => csb_i_1_n_0
    );
csb_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^csb_reg_0\
    );
csb_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => csb_i_1_n_0,
      PRE => \^csb_reg_0\,
      Q => csb
    );
dir_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8CC"
    )
        port map (
      I0 => flag_sel,
      I1 => user_op_busy,
      I2 => byte_cnt(0),
      I3 => byte_cnt(1),
      O => \^dir\
    );
flag_add_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFEEEEEEEE"
    )
        port map (
      I0 => user_rd_en,
      I1 => user_wr_en,
      I2 => byte_cnt(0),
      I3 => byte_cnt(1),
      I4 => p_5_in,
      I5 => user_op_busy,
      O => flag_add_i_1_n_0
    );
flag_add_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => flag_add_i_1_n_0,
      Q => user_op_busy
    );
flag_sel_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => user_wr_en,
      I1 => user_rd_en,
      I2 => flag_sel,
      O => flag_sel_i_1_n_0
    );
flag_sel_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => flag_sel_i_1_n_0,
      Q => flag_sel
    );
\rd_addr_s[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \rd_addr_s[14]_i_2_n_0\,
      I1 => \rd_addr_s[14]_i_3_n_0\,
      I2 => \rd_addr_s[14]_i_4_n_0\,
      I3 => \rd_addr_s[14]_i_5_n_0\,
      I4 => \rd_addr_s[14]_i_6_n_0\,
      I5 => \rd_addr_s[14]_i_7_n_0\,
      O => user_rd_en
    );
\rd_addr_s[14]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(7),
      I1 => \rd_cmd_ff0_reg[31]\(6),
      I2 => \rd_cmd_ff0_reg[31]\(5),
      I3 => \rd_cmd_ff0_reg[31]\(4),
      O => \rd_addr_s[14]_i_10_n_0\
    );
\rd_addr_s[14]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(11),
      I1 => \rd_cmd_ff0_reg[31]\(10),
      I2 => \rd_cmd_ff0_reg[31]\(9),
      I3 => \rd_cmd_ff0_reg[31]\(8),
      O => \rd_addr_s[14]_i_11_n_0\
    );
\rd_addr_s[14]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(20),
      I1 => Q(23),
      I2 => Q(22),
      I3 => Q(30),
      O => \rd_addr_s[14]_i_12_n_0\
    );
\rd_addr_s[14]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(16),
      I1 => Q(24),
      I2 => Q(18),
      I3 => Q(19),
      O => \rd_addr_s[14]_i_13_n_0\
    );
\rd_addr_s[14]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(29),
      I2 => Q(1),
      I3 => Q(21),
      O => \rd_addr_s[14]_i_14_n_0\
    );
\rd_addr_s[14]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(17),
      I1 => Q(25),
      I2 => Q(13),
      I3 => Q(9),
      O => \rd_addr_s[14]_i_15_n_0\
    );
\rd_addr_s[14]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(10),
      I1 => Q(8),
      I2 => Q(7),
      I3 => Q(6),
      O => \rd_addr_s[14]_i_16_n_0\
    );
\rd_addr_s[14]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(4),
      I3 => Q(3),
      O => \rd_addr_s[14]_i_17_n_0\
    );
\rd_addr_s[14]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      I2 => Q(12),
      I3 => Q(11),
      O => \rd_addr_s[14]_i_18_n_0\
    );
\rd_addr_s[14]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(31),
      I1 => Q(28),
      I2 => Q(27),
      I3 => Q(26),
      O => \rd_addr_s[14]_i_19_n_0\
    );
\rd_addr_s[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(19),
      I1 => \rd_cmd_ff0_reg[31]\(18),
      I2 => \rd_cmd_ff0_reg[31]\(17),
      I3 => \rd_cmd_ff0_reg[31]\(16),
      I4 => \rd_addr_s[14]_i_8_n_0\,
      O => \rd_addr_s[14]_i_2_n_0\
    );
\rd_addr_s[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(27),
      I1 => \rd_cmd_ff0_reg[31]\(26),
      I2 => \rd_cmd_ff0_reg[31]\(25),
      I3 => \rd_cmd_ff0_reg[31]\(24),
      I4 => \rd_addr_s[14]_i_9_n_0\,
      O => \rd_addr_s[14]_i_3_n_0\
    );
\rd_addr_s[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(2),
      I1 => \rd_cmd_ff0_reg[31]\(3),
      I2 => \rd_cmd_ff0_reg[31]\(0),
      I3 => \rd_cmd_ff0_reg[31]\(1),
      I4 => \rd_addr_s[14]_i_10_n_0\,
      O => \rd_addr_s[14]_i_4_n_0\
    );
\rd_addr_s[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(12),
      I1 => \rd_cmd_ff0_reg[31]\(13),
      I2 => \rd_cmd_ff0_reg[31]\(14),
      I3 => \rd_cmd_ff0_reg[31]\(15),
      I4 => \rd_addr_s[14]_i_11_n_0\,
      O => \rd_addr_s[14]_i_5_n_0\
    );
\rd_addr_s[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rd_addr_s[14]_i_12_n_0\,
      I1 => \rd_addr_s[14]_i_13_n_0\,
      I2 => \rd_addr_s[14]_i_14_n_0\,
      I3 => \rd_addr_s[14]_i_15_n_0\,
      O => \rd_addr_s[14]_i_6_n_0\
    );
\rd_addr_s[14]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rd_addr_s[14]_i_16_n_0\,
      I1 => \rd_addr_s[14]_i_17_n_0\,
      I2 => \rd_addr_s[14]_i_18_n_0\,
      I3 => \rd_addr_s[14]_i_19_n_0\,
      O => \rd_addr_s[14]_i_7_n_0\
    );
\rd_addr_s[14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(20),
      I1 => \rd_cmd_ff0_reg[31]\(21),
      I2 => \rd_cmd_ff0_reg[31]\(22),
      I3 => \rd_cmd_ff0_reg[31]\(23),
      O => \rd_addr_s[14]_i_8_n_0\
    );
\rd_addr_s[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rd_cmd_ff0_reg[31]\(28),
      I1 => \rd_cmd_ff0_reg[31]\(29),
      I2 => \rd_cmd_ff0_reg[31]\(31),
      I3 => \rd_cmd_ff0_reg[31]\(30),
      O => \rd_addr_s[14]_i_9_n_0\
    );
\rd_addr_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(0),
      Q => \rd_addr_s_reg_n_0_[0]\
    );
\rd_addr_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(10),
      Q => \rd_addr_s_reg_n_0_[10]\
    );
\rd_addr_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(11),
      Q => \rd_addr_s_reg_n_0_[11]\
    );
\rd_addr_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(12),
      Q => \rd_addr_s_reg_n_0_[12]\
    );
\rd_addr_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(13),
      Q => \rd_addr_s_reg_n_0_[13]\
    );
\rd_addr_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(14),
      Q => \rd_addr_s_reg_n_0_[14]\
    );
\rd_addr_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(1),
      Q => \rd_addr_s_reg_n_0_[1]\
    );
\rd_addr_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(2),
      Q => \rd_addr_s_reg_n_0_[2]\
    );
\rd_addr_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(3),
      Q => \rd_addr_s_reg_n_0_[3]\
    );
\rd_addr_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(4),
      Q => \rd_addr_s_reg_n_0_[4]\
    );
\rd_addr_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(5),
      Q => \rd_addr_s_reg_n_0_[5]\
    );
\rd_addr_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(6),
      Q => \rd_addr_s_reg_n_0_[6]\
    );
\rd_addr_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(7),
      Q => \rd_addr_s_reg_n_0_[7]\
    );
\rd_addr_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(8),
      Q => \rd_addr_s_reg_n_0_[8]\
    );
\rd_addr_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg3_reg[14]\(9),
      Q => \rd_addr_s_reg_n_0_[9]\
    );
\rd_data_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(2),
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(0),
      O => \rd_data_s[0]_i_1_n_0\
    );
\rd_data_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(2),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(1),
      O => \rd_data_s[1]_i_1_n_0\
    );
\rd_data_s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(2),
      I2 => bit_cnt(0),
      I3 => bit_cnt(1),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(2),
      O => \rd_data_s[2]_i_1_n_0\
    );
\rd_data_s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(0),
      I2 => bit_cnt(2),
      I3 => bit_cnt(1),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(3),
      O => \rd_data_s[3]_i_1_n_0\
    );
\rd_data_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(2),
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(4),
      O => \rd_data_s[4]_i_1_n_0\
    );
\rd_data_s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(0),
      I2 => bit_cnt(1),
      I3 => bit_cnt(2),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(5),
      O => \rd_data_s[5]_i_1_n_0\
    );
\rd_data_s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(2),
      I2 => bit_cnt(0),
      I3 => bit_cnt(1),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(6),
      O => \rd_data_s[6]_i_1_n_0\
    );
\rd_data_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => sdio_in_q2,
      I1 => bit_cnt(2),
      I2 => bit_cnt(0),
      I3 => bit_cnt(1),
      I4 => \rd_data_s1__1\,
      I5 => rd_data_s(7),
      O => \rd_data_s[7]_i_1_n_0\
    );
\rd_data_s[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \rd_data_s[7]_i_3_n_0\,
      I1 => baud_cnt_reg(1),
      I2 => flag_sel,
      I3 => \rd_data_s[7]_i_4_n_0\,
      I4 => baud_cnt_reg(4),
      I5 => baud_cnt_reg(6),
      O => \rd_data_s1__1\
    );
\rd_data_s[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => byte_cnt(0),
      I1 => byte_cnt(1),
      O => \rd_data_s[7]_i_3_n_0\
    );
\rd_data_s[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => baud_cnt_reg(5),
      I1 => baud_cnt_reg(0),
      I2 => sclk_i_8_n_0,
      I3 => sclk_i_7_n_0,
      I4 => sclk_i_6_n_0,
      O => \rd_data_s[7]_i_4_n_0\
    );
\rd_data_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[0]_i_1_n_0\,
      Q => rd_data_s(0)
    );
\rd_data_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[1]_i_1_n_0\,
      Q => rd_data_s(1)
    );
\rd_data_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[2]_i_1_n_0\,
      Q => rd_data_s(2)
    );
\rd_data_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[3]_i_1_n_0\,
      Q => rd_data_s(3)
    );
\rd_data_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[4]_i_1_n_0\,
      Q => rd_data_s(4)
    );
\rd_data_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[5]_i_1_n_0\,
      Q => rd_data_s(5)
    );
\rd_data_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[6]_i_1_n_0\,
      Q => rd_data_s(6)
    );
\rd_data_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => \rd_data_s[7]_i_1_n_0\,
      Q => rd_data_s(7)
    );
sclk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => baud_cnt_reg(1),
      I1 => sclk_i_2_n_0,
      I2 => sclk_i_3_n_0,
      I3 => \^sclk\,
      O => sclk_i_1_n_0
    );
sclk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => baud_cnt_reg(6),
      I1 => baud_cnt_reg(4),
      I2 => sclk_i_4_n_0,
      I3 => baud_cnt_reg(0),
      I4 => baud_cnt_reg(5),
      O => sclk_i_2_n_0
    );
sclk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sclk_i_5_n_0,
      I1 => sclk_i_6_n_0,
      I2 => sclk_i_7_n_0,
      I3 => sclk_i_8_n_0,
      I4 => baud_cnt_reg(0),
      I5 => baud_cnt_reg(5),
      O => sclk_i_3_n_0
    );
sclk_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sclk_i_6_n_0,
      I1 => baud_cnt_reg(15),
      I2 => baud_cnt_reg(14),
      I3 => baud_cnt_reg(13),
      I4 => baud_cnt_reg(12),
      I5 => sclk_i_8_n_0,
      O => sclk_i_4_n_0
    );
sclk_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => baud_cnt_reg(4),
      I1 => baud_cnt_reg(6),
      I2 => baud_cnt_reg(1),
      O => sclk_i_5_n_0
    );
sclk_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => baud_cnt_reg(11),
      I1 => baud_cnt_reg(10),
      I2 => baud_cnt_reg(9),
      I3 => baud_cnt_reg(8),
      O => sclk_i_6_n_0
    );
sclk_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => baud_cnt_reg(15),
      I1 => baud_cnt_reg(14),
      I2 => baud_cnt_reg(13),
      I3 => baud_cnt_reg(12),
      O => sclk_i_7_n_0
    );
sclk_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => baud_cnt_reg(2),
      I1 => user_op_busy,
      I2 => baud_cnt_reg(7),
      I3 => baud_cnt_reg(3),
      O => sclk_i_8_n_0
    );
sclk_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => sclk_i_1_n_0,
      Q => \^sclk\
    );
sdio_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sdio_out,
      I1 => \^dir\,
      O => sdio
    );
sdio_in_q1_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => sdio,
      Q => sdio_in_q1
    );
sdio_in_q2_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => sdio_in_q1,
      Q => sdio_in_q2
    );
sdio_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCAFFFF0CCA0000"
    )
        port map (
      I0 => sdio_out_i_2_n_0,
      I1 => sdio_out_i_3_n_0,
      I2 => byte_cnt(0),
      I3 => byte_cnt(1),
      I4 => p_1_in1_in,
      I5 => sdio_out,
      O => sdio_out_i_1_n_0
    );
sdio_out_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0004000"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => wr_data_s(2),
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => wr_data_s(0),
      I5 => sdio_out_i_15_n_0,
      O => sdio_out_i_10_n_0
    );
sdio_out_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => byte_cnt(1),
      I1 => byte_cnt(0),
      I2 => sclk_i_6_n_0,
      I3 => sclk_i_7_n_0,
      I4 => sclk_i_8_n_0,
      I5 => sdio_out_i_13_n_0,
      O => \sdio_out1__0\
    );
sdio_out_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => sdio_out_i_16_n_0,
      I1 => sdio_out_i_17_n_0,
      I2 => bit_cnt(2),
      I3 => bit_cnt(1),
      I4 => sdio_out_i_18_n_0,
      I5 => sdio_out_i_19_n_0,
      O => sdio_out_i_12_n_0
    );
sdio_out_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => baud_cnt_reg(0),
      I1 => baud_cnt_reg(1),
      I2 => baud_cnt_reg(4),
      I3 => baud_cnt_reg(6),
      I4 => baud_cnt_reg(5),
      O => sdio_out_i_13_n_0
    );
sdio_out_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080C00"
    )
        port map (
      I0 => wr_data_s(5),
      I1 => flag_sel,
      I2 => bit_cnt(0),
      I3 => wr_data_s(7),
      I4 => bit_cnt(1),
      O => sdio_out_i_14_n_0
    );
sdio_out_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080C00"
    )
        port map (
      I0 => wr_data_s(1),
      I1 => flag_sel,
      I2 => bit_cnt(0),
      I3 => wr_data_s(3),
      I4 => bit_cnt(1),
      O => sdio_out_i_15_n_0
    );
sdio_out_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[5]\,
      I1 => \wr_addr_s_reg_n_0_[4]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[5]\,
      I5 => \rd_addr_s_reg_n_0_[4]\,
      O => sdio_out_i_16_n_0
    );
sdio_out_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[1]\,
      I1 => \wr_addr_s_reg_n_0_[0]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[1]\,
      I5 => \rd_addr_s_reg_n_0_[0]\,
      O => sdio_out_i_17_n_0
    );
sdio_out_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[7]\,
      I1 => \wr_addr_s_reg_n_0_[6]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[7]\,
      I5 => \rd_addr_s_reg_n_0_[6]\,
      O => sdio_out_i_18_n_0
    );
sdio_out_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[3]\,
      I1 => \wr_addr_s_reg_n_0_[2]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[3]\,
      I5 => \rd_addr_s_reg_n_0_[2]\,
      O => sdio_out_i_19_n_0
    );
sdio_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFAF0FCF0FAF0"
    )
        port map (
      I0 => sdio_out_i_5_n_0,
      I1 => sdio_out_i_6_n_0,
      I2 => sdio_out_i_7_n_0,
      I3 => bit_cnt(1),
      I4 => bit_cnt(2),
      I5 => sdio_out_i_8_n_0,
      O => sdio_out_i_2_n_0
    );
sdio_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => sdio_out_i_9_n_0,
      I2 => sdio_out_i_10_n_0,
      I3 => \sdio_out1__0\,
      I4 => sdio_out_i_12_n_0,
      O => sdio_out_i_3_n_0
    );
sdio_out_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sdio_out_i_13_n_0,
      I1 => sclk_i_8_n_0,
      I2 => sclk_i_7_n_0,
      I3 => sclk_i_6_n_0,
      O => p_1_in1_in
    );
sdio_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[13]\,
      I1 => \wr_addr_s_reg_n_0_[12]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[13]\,
      I5 => \rd_addr_s_reg_n_0_[12]\,
      O => sdio_out_i_5_n_0
    );
sdio_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[9]\,
      I1 => \wr_addr_s_reg_n_0_[8]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[9]\,
      I5 => \rd_addr_s_reg_n_0_[8]\,
      O => sdio_out_i_6_n_0
    );
sdio_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011001110010001"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => bit_cnt(1),
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \wr_addr_s_reg_n_0_[14]\,
      I5 => \rd_addr_s_reg_n_0_[14]\,
      O => sdio_out_i_7_n_0
    );
sdio_out_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \wr_addr_s_reg_n_0_[11]\,
      I1 => \wr_addr_s_reg_n_0_[10]\,
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => \rd_addr_s_reg_n_0_[11]\,
      I5 => \rd_addr_s_reg_n_0_[10]\,
      O => sdio_out_i_8_n_0
    );
sdio_out_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0004000"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => wr_data_s(6),
      I2 => bit_cnt(0),
      I3 => flag_sel,
      I4 => wr_data_s(4),
      I5 => sdio_out_i_14_n_0,
      O => sdio_out_i_9_n_0
    );
sdio_out_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^csb_reg_0\,
      D => sdio_out_i_1_n_0,
      Q => sdio_out
    );
\user_rd_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => byte_cnt(0),
      I1 => byte_cnt(1),
      I2 => p_5_in,
      I3 => flag_sel,
      O => user_rd_data0
    );
\user_rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(0),
      Q => user_rd_data(0)
    );
\user_rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(1),
      Q => user_rd_data(1)
    );
\user_rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(2),
      Q => user_rd_data(2)
    );
\user_rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(3),
      Q => user_rd_data(3)
    );
\user_rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(4),
      Q => user_rd_data(4)
    );
\user_rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(5),
      Q => user_rd_data(5)
    );
\user_rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(6),
      Q => user_rd_data(6)
    );
\user_rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_rd_data0,
      CLR => \^csb_reg_0\,
      D => rd_data_s(7),
      Q => user_rd_data(7)
    );
\wr_addr_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(0),
      Q => \wr_addr_s_reg_n_0_[0]\
    );
\wr_addr_s_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(10),
      Q => \wr_addr_s_reg_n_0_[10]\
    );
\wr_addr_s_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(11),
      Q => \wr_addr_s_reg_n_0_[11]\
    );
\wr_addr_s_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(12),
      Q => \wr_addr_s_reg_n_0_[12]\
    );
\wr_addr_s_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(13),
      Q => \wr_addr_s_reg_n_0_[13]\
    );
\wr_addr_s_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(14),
      Q => \wr_addr_s_reg_n_0_[14]\
    );
\wr_addr_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(1),
      Q => \wr_addr_s_reg_n_0_[1]\
    );
\wr_addr_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(2),
      Q => \wr_addr_s_reg_n_0_[2]\
    );
\wr_addr_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(3),
      Q => \wr_addr_s_reg_n_0_[3]\
    );
\wr_addr_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(4),
      Q => \wr_addr_s_reg_n_0_[4]\
    );
\wr_addr_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(5),
      Q => \wr_addr_s_reg_n_0_[5]\
    );
\wr_addr_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(6),
      Q => \wr_addr_s_reg_n_0_[6]\
    );
\wr_addr_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(7),
      Q => \wr_addr_s_reg_n_0_[7]\
    );
\wr_addr_s_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(8),
      Q => \wr_addr_s_reg_n_0_[8]\
    );
\wr_addr_s_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg0_reg[14]\(9),
      Q => \wr_addr_s_reg_n_0_[9]\
    );
\wr_data_s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \wr_data_s[7]_i_2_n_0\,
      I1 => \wr_data_s[7]_i_3_n_0\,
      I2 => \wr_data_s[7]_i_4_n_0\,
      I3 => \wr_data_s[7]_i_5_n_0\,
      I4 => \wr_data_s[7]_i_6_n_0\,
      I5 => \wr_data_s[7]_i_7_n_0\,
      O => user_wr_en
    );
\wr_data_s[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(7),
      I1 => \wr_cmd_ff0_reg[31]\(6),
      I2 => \wr_cmd_ff0_reg[31]\(5),
      I3 => \wr_cmd_ff0_reg[31]\(4),
      O => \wr_data_s[7]_i_10_n_0\
    );
\wr_data_s[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(11),
      I1 => \wr_cmd_ff0_reg[31]\(10),
      I2 => \wr_cmd_ff0_reg[31]\(9),
      I3 => \wr_cmd_ff0_reg[31]\(8),
      O => \wr_data_s[7]_i_11_n_0\
    );
\wr_data_s[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(20),
      I1 => \wr_cmd_ff1_reg[31]\(21),
      I2 => \wr_cmd_ff1_reg[31]\(8),
      I3 => \wr_cmd_ff1_reg[31]\(5),
      O => \wr_data_s[7]_i_12_n_0\
    );
\wr_data_s[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(16),
      I1 => \wr_cmd_ff1_reg[31]\(17),
      I2 => \wr_cmd_ff1_reg[31]\(12),
      I3 => \wr_cmd_ff1_reg[31]\(9),
      O => \wr_data_s[7]_i_13_n_0\
    );
\wr_data_s[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(28),
      I1 => \wr_cmd_ff1_reg[31]\(29),
      I2 => \wr_cmd_ff1_reg[31]\(0),
      I3 => \wr_cmd_ff1_reg[31]\(13),
      O => \wr_data_s[7]_i_14_n_0\
    );
\wr_data_s[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(24),
      I1 => \wr_cmd_ff1_reg[31]\(25),
      I2 => \wr_cmd_ff1_reg[31]\(4),
      I3 => \wr_cmd_ff1_reg[31]\(1),
      O => \wr_data_s[7]_i_15_n_0\
    );
\wr_data_s[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(15),
      I1 => \wr_cmd_ff1_reg[31]\(14),
      I2 => \wr_cmd_ff1_reg[31]\(11),
      I3 => \wr_cmd_ff1_reg[31]\(10),
      O => \wr_data_s[7]_i_16_n_0\
    );
\wr_data_s[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(3),
      I1 => \wr_cmd_ff1_reg[31]\(2),
      I2 => \wr_cmd_ff1_reg[31]\(7),
      I3 => \wr_cmd_ff1_reg[31]\(6),
      O => \wr_data_s[7]_i_17_n_0\
    );
\wr_data_s[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(23),
      I1 => \wr_cmd_ff1_reg[31]\(22),
      I2 => \wr_cmd_ff1_reg[31]\(19),
      I3 => \wr_cmd_ff1_reg[31]\(18),
      O => \wr_data_s[7]_i_18_n_0\
    );
\wr_data_s[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_cmd_ff1_reg[31]\(31),
      I1 => \wr_cmd_ff1_reg[31]\(30),
      I2 => \wr_cmd_ff1_reg[31]\(27),
      I3 => \wr_cmd_ff1_reg[31]\(26),
      O => \wr_data_s[7]_i_19_n_0\
    );
\wr_data_s[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(19),
      I1 => \wr_cmd_ff0_reg[31]\(18),
      I2 => \wr_cmd_ff0_reg[31]\(17),
      I3 => \wr_cmd_ff0_reg[31]\(16),
      I4 => \wr_data_s[7]_i_8_n_0\,
      O => \wr_data_s[7]_i_2_n_0\
    );
\wr_data_s[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(27),
      I1 => \wr_cmd_ff0_reg[31]\(26),
      I2 => \wr_cmd_ff0_reg[31]\(25),
      I3 => \wr_cmd_ff0_reg[31]\(24),
      I4 => \wr_data_s[7]_i_9_n_0\,
      O => \wr_data_s[7]_i_3_n_0\
    );
\wr_data_s[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(2),
      I1 => \wr_cmd_ff0_reg[31]\(3),
      I2 => \wr_cmd_ff0_reg[31]\(0),
      I3 => \wr_cmd_ff0_reg[31]\(1),
      I4 => \wr_data_s[7]_i_10_n_0\,
      O => \wr_data_s[7]_i_4_n_0\
    );
\wr_data_s[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(12),
      I1 => \wr_cmd_ff0_reg[31]\(13),
      I2 => \wr_cmd_ff0_reg[31]\(14),
      I3 => \wr_cmd_ff0_reg[31]\(15),
      I4 => \wr_data_s[7]_i_11_n_0\,
      O => \wr_data_s[7]_i_5_n_0\
    );
\wr_data_s[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_data_s[7]_i_12_n_0\,
      I1 => \wr_data_s[7]_i_13_n_0\,
      I2 => \wr_data_s[7]_i_14_n_0\,
      I3 => \wr_data_s[7]_i_15_n_0\,
      O => \wr_data_s[7]_i_6_n_0\
    );
\wr_data_s[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_data_s[7]_i_16_n_0\,
      I1 => \wr_data_s[7]_i_17_n_0\,
      I2 => \wr_data_s[7]_i_18_n_0\,
      I3 => \wr_data_s[7]_i_19_n_0\,
      O => \wr_data_s[7]_i_7_n_0\
    );
\wr_data_s[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(20),
      I1 => \wr_cmd_ff0_reg[31]\(21),
      I2 => \wr_cmd_ff0_reg[31]\(22),
      I3 => \wr_cmd_ff0_reg[31]\(23),
      O => \wr_data_s[7]_i_8_n_0\
    );
\wr_data_s[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wr_cmd_ff0_reg[31]\(28),
      I1 => \wr_cmd_ff0_reg[31]\(29),
      I2 => \wr_cmd_ff0_reg[31]\(31),
      I3 => \wr_cmd_ff0_reg[31]\(30),
      O => \wr_data_s[7]_i_9_n_0\
    );
\wr_data_s_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(0),
      Q => wr_data_s(0)
    );
\wr_data_s_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(1),
      Q => wr_data_s(1)
    );
\wr_data_s_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(2),
      Q => wr_data_s(2)
    );
\wr_data_s_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(3),
      Q => wr_data_s(3)
    );
\wr_data_s_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(4),
      Q => wr_data_s(4)
    );
\wr_data_s_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(5),
      Q => wr_data_s(5)
    );
\wr_data_s_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(6),
      Q => wr_data_s(6)
    );
\wr_data_s_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => user_wr_en,
      CLR => \^csb_reg_0\,
      D => \slv_reg1_reg[7]_0\(7),
      Q => wr_data_s(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    dir : out STD_LOGIC;
    csb : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    sclk : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    sdio : inout STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI : entity is "AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI";
end Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI;

architecture STRUCTURE of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal adi_spi_driver_14_8bit_inst_n_1 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal rd_cmd_ff0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd_cmd_ff1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal wr_cmd_ff0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wr_cmd_ff1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair6";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
adi_spi_driver_14_8bit_inst: entity work.Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_adi_spi_driver_15_8bit
     port map (
      D(7 downto 0) => reg_data_out(7 downto 0),
      Q(31 downto 0) => rd_cmd_ff1(31 downto 0),
      csb => csb,
      csb_reg_0 => adi_spi_driver_14_8bit_inst_n_1,
      dir => dir,
      \rd_cmd_ff0_reg[31]\(31 downto 0) => rd_cmd_ff0(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sclk => sclk,
      sdio => sdio,
      sel0(2 downto 0) => sel0(2 downto 0),
      \slv_reg0_reg[14]\(14 downto 0) => slv_reg0(14 downto 0),
      \slv_reg1_reg[0]\ => \axi_rdata[0]_i_2_n_0\,
      \slv_reg1_reg[1]\ => \axi_rdata[1]_i_2_n_0\,
      \slv_reg1_reg[2]\ => \axi_rdata[2]_i_2_n_0\,
      \slv_reg1_reg[3]\ => \axi_rdata[3]_i_2_n_0\,
      \slv_reg1_reg[4]\ => \axi_rdata[4]_i_2_n_0\,
      \slv_reg1_reg[5]\ => \axi_rdata[5]_i_2_n_0\,
      \slv_reg1_reg[6]\ => \axi_rdata[6]_i_2_n_0\,
      \slv_reg1_reg[7]\ => \axi_rdata[7]_i_2_n_0\,
      \slv_reg1_reg[7]_0\(7 downto 0) => slv_reg1(7 downto 0),
      \slv_reg3_reg[14]\(14 downto 0) => slv_reg3(14 downto 0),
      \slv_reg4_reg[7]\(7 downto 0) => slv_reg4(7 downto 0),
      \wr_cmd_ff0_reg[31]\(31 downto 0) => wr_cmd_ff0(31 downto 0),
      \wr_cmd_ff1_reg[31]\(31 downto 0) => wr_cmd_ff1(31 downto 0)
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => adi_spi_driver_14_8bit_inst_n_1
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg3(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(0),
      I5 => slv_reg2(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(10),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[10]_i_2_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg3(10),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(10),
      I5 => slv_reg2(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(11),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[11]_i_2_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg3(11),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(11),
      I5 => slv_reg2(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(12),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[12]_i_2_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg3(12),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(12),
      I5 => slv_reg2(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(13),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[13]_i_2_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg3(13),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(13),
      I5 => slv_reg2(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(14),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[14]_i_2_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg3(14),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(14),
      I5 => slv_reg2(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(15),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[15]_i_2_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg3(15),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(15),
      I5 => slv_reg2(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(16),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[16]_i_2_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg3(16),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(16),
      I5 => slv_reg2(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(17),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[17]_i_2_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg3(17),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(17),
      I5 => slv_reg2(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(18),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[18]_i_2_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg3(18),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(18),
      I5 => slv_reg2(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(19),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[19]_i_2_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg3(19),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(19),
      I5 => slv_reg2(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg3(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(1),
      I5 => slv_reg2(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(20),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[20]_i_2_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg3(20),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(20),
      I5 => slv_reg2(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(21),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[21]_i_2_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg3(21),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(21),
      I5 => slv_reg2(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(22),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[22]_i_2_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg3(22),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(22),
      I5 => slv_reg2(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(23),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[23]_i_2_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg3(23),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(23),
      I5 => slv_reg2(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(24),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[24]_i_2_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg3(24),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(24),
      I5 => slv_reg2(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(25),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[25]_i_2_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg3(25),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(25),
      I5 => slv_reg2(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(26),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[26]_i_2_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg3(26),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(26),
      I5 => slv_reg2(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(27),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[27]_i_2_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg3(27),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(27),
      I5 => slv_reg2(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(28),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[28]_i_2_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg3(28),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(28),
      I5 => slv_reg2(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(29),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[29]_i_2_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg3(29),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(29),
      I5 => slv_reg2(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg3(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(2),
      I5 => slv_reg2(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(30),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[30]_i_2_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg3(30),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(30),
      I5 => slv_reg2(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(31),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[31]_i_2_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg3(31),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(31),
      I5 => slv_reg2(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg3(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(3),
      I5 => slv_reg2(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg3(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(4),
      I5 => slv_reg2(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg3(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(5),
      I5 => slv_reg2(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg3(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(6),
      I5 => slv_reg2(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg3(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(7),
      I5 => slv_reg2(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(8),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[8]_i_2_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg3(8),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(8),
      I5 => slv_reg2(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => slv_reg4(9),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \axi_rdata[9]_i_2_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg3(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(9),
      I5 => slv_reg2(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => adi_spi_driver_14_8bit_inst_n_1
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\rd_cmd_ff0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(0),
      Q => rd_cmd_ff0(0)
    );
\rd_cmd_ff0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(10),
      Q => rd_cmd_ff0(10)
    );
\rd_cmd_ff0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(11),
      Q => rd_cmd_ff0(11)
    );
\rd_cmd_ff0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(12),
      Q => rd_cmd_ff0(12)
    );
\rd_cmd_ff0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(13),
      Q => rd_cmd_ff0(13)
    );
\rd_cmd_ff0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(14),
      Q => rd_cmd_ff0(14)
    );
\rd_cmd_ff0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(15),
      Q => rd_cmd_ff0(15)
    );
\rd_cmd_ff0_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(16),
      Q => rd_cmd_ff0(16)
    );
\rd_cmd_ff0_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(17),
      Q => rd_cmd_ff0(17)
    );
\rd_cmd_ff0_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(18),
      Q => rd_cmd_ff0(18)
    );
\rd_cmd_ff0_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(19),
      Q => rd_cmd_ff0(19)
    );
\rd_cmd_ff0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(1),
      Q => rd_cmd_ff0(1)
    );
\rd_cmd_ff0_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(20),
      Q => rd_cmd_ff0(20)
    );
\rd_cmd_ff0_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(21),
      Q => rd_cmd_ff0(21)
    );
\rd_cmd_ff0_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(22),
      Q => rd_cmd_ff0(22)
    );
\rd_cmd_ff0_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(23),
      Q => rd_cmd_ff0(23)
    );
\rd_cmd_ff0_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(24),
      Q => rd_cmd_ff0(24)
    );
\rd_cmd_ff0_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(25),
      Q => rd_cmd_ff0(25)
    );
\rd_cmd_ff0_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(26),
      Q => rd_cmd_ff0(26)
    );
\rd_cmd_ff0_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(27),
      Q => rd_cmd_ff0(27)
    );
\rd_cmd_ff0_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(28),
      Q => rd_cmd_ff0(28)
    );
\rd_cmd_ff0_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(29),
      Q => rd_cmd_ff0(29)
    );
\rd_cmd_ff0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(2),
      Q => rd_cmd_ff0(2)
    );
\rd_cmd_ff0_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(30),
      Q => rd_cmd_ff0(30)
    );
\rd_cmd_ff0_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(31),
      Q => rd_cmd_ff0(31)
    );
\rd_cmd_ff0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(3),
      Q => rd_cmd_ff0(3)
    );
\rd_cmd_ff0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(4),
      Q => rd_cmd_ff0(4)
    );
\rd_cmd_ff0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(5),
      Q => rd_cmd_ff0(5)
    );
\rd_cmd_ff0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(6),
      Q => rd_cmd_ff0(6)
    );
\rd_cmd_ff0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(7),
      Q => rd_cmd_ff0(7)
    );
\rd_cmd_ff0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(8),
      Q => rd_cmd_ff0(8)
    );
\rd_cmd_ff0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg4(9),
      Q => rd_cmd_ff0(9)
    );
\rd_cmd_ff1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(0),
      Q => rd_cmd_ff1(0)
    );
\rd_cmd_ff1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(10),
      Q => rd_cmd_ff1(10)
    );
\rd_cmd_ff1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(11),
      Q => rd_cmd_ff1(11)
    );
\rd_cmd_ff1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(12),
      Q => rd_cmd_ff1(12)
    );
\rd_cmd_ff1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(13),
      Q => rd_cmd_ff1(13)
    );
\rd_cmd_ff1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(14),
      Q => rd_cmd_ff1(14)
    );
\rd_cmd_ff1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(15),
      Q => rd_cmd_ff1(15)
    );
\rd_cmd_ff1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(16),
      Q => rd_cmd_ff1(16)
    );
\rd_cmd_ff1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(17),
      Q => rd_cmd_ff1(17)
    );
\rd_cmd_ff1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(18),
      Q => rd_cmd_ff1(18)
    );
\rd_cmd_ff1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(19),
      Q => rd_cmd_ff1(19)
    );
\rd_cmd_ff1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(1),
      Q => rd_cmd_ff1(1)
    );
\rd_cmd_ff1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(20),
      Q => rd_cmd_ff1(20)
    );
\rd_cmd_ff1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(21),
      Q => rd_cmd_ff1(21)
    );
\rd_cmd_ff1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(22),
      Q => rd_cmd_ff1(22)
    );
\rd_cmd_ff1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(23),
      Q => rd_cmd_ff1(23)
    );
\rd_cmd_ff1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(24),
      Q => rd_cmd_ff1(24)
    );
\rd_cmd_ff1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(25),
      Q => rd_cmd_ff1(25)
    );
\rd_cmd_ff1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(26),
      Q => rd_cmd_ff1(26)
    );
\rd_cmd_ff1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(27),
      Q => rd_cmd_ff1(27)
    );
\rd_cmd_ff1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(28),
      Q => rd_cmd_ff1(28)
    );
\rd_cmd_ff1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(29),
      Q => rd_cmd_ff1(29)
    );
\rd_cmd_ff1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(2),
      Q => rd_cmd_ff1(2)
    );
\rd_cmd_ff1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(30),
      Q => rd_cmd_ff1(30)
    );
\rd_cmd_ff1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(31),
      Q => rd_cmd_ff1(31)
    );
\rd_cmd_ff1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(3),
      Q => rd_cmd_ff1(3)
    );
\rd_cmd_ff1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(4),
      Q => rd_cmd_ff1(4)
    );
\rd_cmd_ff1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(5),
      Q => rd_cmd_ff1(5)
    );
\rd_cmd_ff1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(6),
      Q => rd_cmd_ff1(6)
    );
\rd_cmd_ff1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(7),
      Q => rd_cmd_ff1(7)
    );
\rd_cmd_ff1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(8),
      Q => rd_cmd_ff1(8)
    );
\rd_cmd_ff1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => rd_cmd_ff0(9),
      Q => rd_cmd_ff1(9)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(2),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(2),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(2),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(3),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(3),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(3),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => adi_spi_driver_14_8bit_inst_n_1
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \slv_reg_rden__0\
    );
\wr_cmd_ff0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(0),
      Q => wr_cmd_ff0(0)
    );
\wr_cmd_ff0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(10),
      Q => wr_cmd_ff0(10)
    );
\wr_cmd_ff0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(11),
      Q => wr_cmd_ff0(11)
    );
\wr_cmd_ff0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(12),
      Q => wr_cmd_ff0(12)
    );
\wr_cmd_ff0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(13),
      Q => wr_cmd_ff0(13)
    );
\wr_cmd_ff0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(14),
      Q => wr_cmd_ff0(14)
    );
\wr_cmd_ff0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(15),
      Q => wr_cmd_ff0(15)
    );
\wr_cmd_ff0_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(16),
      Q => wr_cmd_ff0(16)
    );
\wr_cmd_ff0_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(17),
      Q => wr_cmd_ff0(17)
    );
\wr_cmd_ff0_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(18),
      Q => wr_cmd_ff0(18)
    );
\wr_cmd_ff0_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(19),
      Q => wr_cmd_ff0(19)
    );
\wr_cmd_ff0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(1),
      Q => wr_cmd_ff0(1)
    );
\wr_cmd_ff0_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(20),
      Q => wr_cmd_ff0(20)
    );
\wr_cmd_ff0_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(21),
      Q => wr_cmd_ff0(21)
    );
\wr_cmd_ff0_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(22),
      Q => wr_cmd_ff0(22)
    );
\wr_cmd_ff0_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(23),
      Q => wr_cmd_ff0(23)
    );
\wr_cmd_ff0_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(24),
      Q => wr_cmd_ff0(24)
    );
\wr_cmd_ff0_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(25),
      Q => wr_cmd_ff0(25)
    );
\wr_cmd_ff0_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(26),
      Q => wr_cmd_ff0(26)
    );
\wr_cmd_ff0_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(27),
      Q => wr_cmd_ff0(27)
    );
\wr_cmd_ff0_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(28),
      Q => wr_cmd_ff0(28)
    );
\wr_cmd_ff0_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(29),
      Q => wr_cmd_ff0(29)
    );
\wr_cmd_ff0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(2),
      Q => wr_cmd_ff0(2)
    );
\wr_cmd_ff0_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(30),
      Q => wr_cmd_ff0(30)
    );
\wr_cmd_ff0_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(31),
      Q => wr_cmd_ff0(31)
    );
\wr_cmd_ff0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(3),
      Q => wr_cmd_ff0(3)
    );
\wr_cmd_ff0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(4),
      Q => wr_cmd_ff0(4)
    );
\wr_cmd_ff0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(5),
      Q => wr_cmd_ff0(5)
    );
\wr_cmd_ff0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(6),
      Q => wr_cmd_ff0(6)
    );
\wr_cmd_ff0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(7),
      Q => wr_cmd_ff0(7)
    );
\wr_cmd_ff0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(8),
      Q => wr_cmd_ff0(8)
    );
\wr_cmd_ff0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => slv_reg2(9),
      Q => wr_cmd_ff0(9)
    );
\wr_cmd_ff1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(0),
      Q => wr_cmd_ff1(0)
    );
\wr_cmd_ff1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(10),
      Q => wr_cmd_ff1(10)
    );
\wr_cmd_ff1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(11),
      Q => wr_cmd_ff1(11)
    );
\wr_cmd_ff1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(12),
      Q => wr_cmd_ff1(12)
    );
\wr_cmd_ff1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(13),
      Q => wr_cmd_ff1(13)
    );
\wr_cmd_ff1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(14),
      Q => wr_cmd_ff1(14)
    );
\wr_cmd_ff1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(15),
      Q => wr_cmd_ff1(15)
    );
\wr_cmd_ff1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(16),
      Q => wr_cmd_ff1(16)
    );
\wr_cmd_ff1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(17),
      Q => wr_cmd_ff1(17)
    );
\wr_cmd_ff1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(18),
      Q => wr_cmd_ff1(18)
    );
\wr_cmd_ff1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(19),
      Q => wr_cmd_ff1(19)
    );
\wr_cmd_ff1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(1),
      Q => wr_cmd_ff1(1)
    );
\wr_cmd_ff1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(20),
      Q => wr_cmd_ff1(20)
    );
\wr_cmd_ff1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(21),
      Q => wr_cmd_ff1(21)
    );
\wr_cmd_ff1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(22),
      Q => wr_cmd_ff1(22)
    );
\wr_cmd_ff1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(23),
      Q => wr_cmd_ff1(23)
    );
\wr_cmd_ff1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(24),
      Q => wr_cmd_ff1(24)
    );
\wr_cmd_ff1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(25),
      Q => wr_cmd_ff1(25)
    );
\wr_cmd_ff1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(26),
      Q => wr_cmd_ff1(26)
    );
\wr_cmd_ff1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(27),
      Q => wr_cmd_ff1(27)
    );
\wr_cmd_ff1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(28),
      Q => wr_cmd_ff1(28)
    );
\wr_cmd_ff1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(29),
      Q => wr_cmd_ff1(29)
    );
\wr_cmd_ff1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(2),
      Q => wr_cmd_ff1(2)
    );
\wr_cmd_ff1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(30),
      Q => wr_cmd_ff1(30)
    );
\wr_cmd_ff1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(31),
      Q => wr_cmd_ff1(31)
    );
\wr_cmd_ff1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(3),
      Q => wr_cmd_ff1(3)
    );
\wr_cmd_ff1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(4),
      Q => wr_cmd_ff1(4)
    );
\wr_cmd_ff1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(5),
      Q => wr_cmd_ff1(5)
    );
\wr_cmd_ff1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(6),
      Q => wr_cmd_ff1(6)
    );
\wr_cmd_ff1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(7),
      Q => wr_cmd_ff1(7)
    );
\wr_cmd_ff1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(8),
      Q => wr_cmd_ff1(8)
    );
\wr_cmd_ff1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => adi_spi_driver_14_8bit_inst_n_1,
      D => wr_cmd_ff0(9),
      Q => wr_cmd_ff1(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    dir : out STD_LOGIC;
    csb : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    sclk : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    sdio : inout STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0 : entity is "AXI4_ADI_SPI_15_8BIT_v1_0";
end Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0;

architecture STRUCTURE of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0 is
begin
AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI_inst: entity work.Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      csb => csb,
      dir => dir,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sclk => sclk,
      sdio => sdio
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0 is
  port (
    csb : out STD_LOGIC;
    sclk : out STD_LOGIC;
    sdio : inout STD_LOGIC;
    dir : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0 : entity is "Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0,AXI4_ADI_SPI_15_8BIT_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0 : entity is "AXI4_ADI_SPI_15_8BIT_v1_0,Vivado 2018.2";
end Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0;

architecture STRUCTURE of Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Microblaze_xz_Clk";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 7, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Microblaze_xz_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Microblaze_xz_AXI4_ADI_SPI_15_8BIT_0_0_AXI4_ADI_SPI_15_8BIT_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      csb => csb,
      dir => dir,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sclk => sclk,
      sdio => sdio
    );
end STRUCTURE;
