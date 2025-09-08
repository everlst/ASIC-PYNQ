-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Sep  8 15:16:09 2025
-- Host        : everlasting running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/GitHub/ASIC-PYNQ/LAB1/prj/ASIC-PYNQ.gen/sources_1/bd/design_1/ip/design_1_pl_top_0_0/design_1_pl_top_0_0_stub.vhdl
-- Design      : design_1_pl_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pl_top_0_0 is
  Port ( 
    rst_n : in STD_LOGIC;
    led_clk : in STD_LOGIC;
    switch : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC
  );

end design_1_pl_top_0_0;

architecture stub of design_1_pl_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst_n,led_clk,switch,led[3:0],s_axis_aclk,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,m_axis_tready,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tlast,m_axis_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pl_top,Vivado 2021.2";
begin
end;
