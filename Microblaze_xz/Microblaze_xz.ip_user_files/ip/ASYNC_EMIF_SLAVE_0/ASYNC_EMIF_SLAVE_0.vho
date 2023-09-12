-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: bit_fpga.com:user:ASYNC_EMIF_SLAVE:1.0
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT ASYNC_EMIF_SLAVE_0
  PORT (
    clk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    user_wr_en : OUT STD_LOGIC;
    user_wr_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    user_wr_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    user_rd_en : OUT STD_LOGIC;
    user_rd_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    user_rd_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    user_wr_vild : OUT STD_LOGIC;
    user_rd_vild : OUT STD_LOGIC;
    async_emif_cs_n_p : IN STD_LOGIC;
    async_emif_cs_n_n : IN STD_LOGIC;
    async_emif_wr_n_p : IN STD_LOGIC;
    async_emif_wr_n_n : IN STD_LOGIC;
    async_emif_rd_n_p : IN STD_LOGIC;
    async_emif_rd_n_n : IN STD_LOGIC;
    async_emif_addr_p : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    async_emif_addr_n : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    async_emif_data_p : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    async_emif_data_n : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : ASYNC_EMIF_SLAVE_0
  PORT MAP (
    clk => clk,
    rst_n => rst_n,
    user_wr_en => user_wr_en,
    user_wr_addr => user_wr_addr,
    user_wr_data => user_wr_data,
    user_rd_en => user_rd_en,
    user_rd_addr => user_rd_addr,
    user_rd_data => user_rd_data,
    user_wr_vild => user_wr_vild,
    user_rd_vild => user_rd_vild,
    async_emif_cs_n_p => async_emif_cs_n_p,
    async_emif_cs_n_n => async_emif_cs_n_n,
    async_emif_wr_n_p => async_emif_wr_n_p,
    async_emif_wr_n_n => async_emif_wr_n_n,
    async_emif_rd_n_p => async_emif_rd_n_p,
    async_emif_rd_n_n => async_emif_rd_n_n,
    async_emif_addr_p => async_emif_addr_p,
    async_emif_addr_n => async_emif_addr_n,
    async_emif_data_p => async_emif_data_p,
    async_emif_data_n => async_emif_data_n
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

