-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Nov  9 20:18:14 2025
-- Host        : Theway running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/zynq_pro/LAB6_8bit/LAB6_8bit/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/input_ram_rd3/input_ram_rd3_stub.vhdl
-- Design      : input_ram_rd3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity input_ram_rd3 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    rsta_busy : out STD_LOGIC
  );

end input_ram_rd3;

architecture stub of input_ram_rd3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,wea[0:0],addra[7:0],dina[1023:0],douta[1023:0],rsta_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2020.2";
begin
end;
