--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: runled_timesim.vhd
-- /___/   /\     Timestamp: Tue Feb 21 22:32:15 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf runled.pcf -rpw 100 -tpw 0 -ar Structure -tm runled -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim runled.ncd runled_timesim.vhd 
-- Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: runled.ncd
-- Output file	: C:\Proj\runled\netgen\par\runled_timesim.vhd
-- # of Entities	: 1
-- Design Name	: runled
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity runled is
  port (
    clk : in STD_LOGIC := 'X'; 
    nreset : in STD_LOGIC := 'X'; 
    encodAsw : in STD_LOGIC := 'X'; 
    encodBsw : in STD_LOGIC := 'X'; 
    encoda : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    encodb : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    digit : out STD_LOGIC_VECTOR ( 19 downto 0 ); 
    digseg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ledcir : out STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end runled;

architecture Structure of runled is
  signal ledcir_3_OBUF_0 : STD_LOGIC; 
  signal ledcir_4_OBUF_635 : STD_LOGIC; 
  signal ledcir_5_OBUF_0 : STD_LOGIC; 
  signal leds_0_637 : STD_LOGIC; 
  signal leds_1_639 : STD_LOGIC; 
  signal leds_2_640 : STD_LOGIC; 
  signal leds_3_641 : STD_LOGIC; 
  signal leds_4_642 : STD_LOGIC; 
  signal leds_5_643 : STD_LOGIC; 
  signal leds_6_644 : STD_LOGIC; 
  signal leds_7_646 : STD_LOGIC; 
  signal poin_647 : STD_LOGIC; 
  signal encodAsw_IBUF_0 : STD_LOGIC; 
  signal nreset_inv : STD_LOGIC; 
  signal encodBsw_IBUF_0 : STD_LOGIC; 
  signal digit_0_OBUF_0 : STD_LOGIC; 
  signal digit_1_OBUF_0 : STD_LOGIC; 
  signal digit_2_OBUF_653 : STD_LOGIC; 
  signal digit_10_OBUF_654 : STD_LOGIC; 
  signal digit_3_OBUF_0 : STD_LOGIC; 
  signal digit_11_OBUF_0 : STD_LOGIC; 
  signal digit_4_OBUF_657 : STD_LOGIC; 
  signal digit_12_OBUF_658 : STD_LOGIC; 
  signal digit_5_OBUF_0 : STD_LOGIC; 
  signal digit_13_OBUF_0 : STD_LOGIC; 
  signal encoda_0_IBUF_0 : STD_LOGIC; 
  signal digit_6_OBUF_0 : STD_LOGIC; 
  signal digit_14_OBUF_0 : STD_LOGIC; 
  signal encoda_1_IBUF_0 : STD_LOGIC; 
  signal digit_7_OBUF_665 : STD_LOGIC; 
  signal digit_15_OBUF_666 : STD_LOGIC; 
  signal digit_8_OBUF_667 : STD_LOGIC; 
  signal digit_16_OBUF_668 : STD_LOGIC; 
  signal digit_9_OBUF_0 : STD_LOGIC; 
  signal digit_17_OBUF_0 : STD_LOGIC; 
  signal encodb_0_IBUF_0 : STD_LOGIC; 
  signal digit_18_OBUF_672 : STD_LOGIC; 
  signal encodb_1_IBUF_0 : STD_LOGIC; 
  signal digit_19_OBUF_674 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal Result_2_1_0 : STD_LOGIC; 
  signal Q_n0211 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal Result_8_0 : STD_LOGIC; 
  signal Result_9_0 : STD_LOGIC; 
  signal Result_11_0 : STD_LOGIC; 
  signal Result_12_0 : STD_LOGIC; 
  signal Result_13_0 : STD_LOGIC; 
  signal Result_14_0 : STD_LOGIC; 
  signal count_31_GND_1_o_equal_40_o_31_1_702 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal count_31_GND_1_o_equal_40_o_31_Q : STD_LOGIC; 
  signal count_31_GND_1_o_equal_40_o_31_3_rstpot_710 : STD_LOGIC; 
  signal Q_n0214 : STD_LOGIC; 
  signal Result_1_1_0 : STD_LOGIC; 
  signal count_31_GND_1_o_equal_40_o : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal Result_10_0 : STD_LOGIC; 
  signal ledcir_1_OBUF_721 : STD_LOGIC; 
  signal Mram_ppoint : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal ledcir_2_OBUF_724 : STD_LOGIC; 
  signal ledcir_0_OBUF_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal Result_0_1_0 : STD_LOGIC; 
  signal Mcount_count_cy_3_Q_730 : STD_LOGIC; 
  signal Mcount_count_cy_7_Q_731 : STD_LOGIC; 
  signal Mcount_count_cy_11_Q_732 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal ledcir_cnt_2_rstpot_736 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal ledcir_cnt_0_rstpot_738 : STD_LOGIC; 
  signal ledcir_cnt_1_rstpot_739 : STD_LOGIC; 
  signal encodAsw_IBUF_39 : STD_LOGIC; 
  signal ProtoComp2_IINV_OUT : STD_LOGIC; 
  signal nreset_inv_non_inverted : STD_LOGIC; 
  signal encodBsw_IBUF_46 : STD_LOGIC; 
  signal encoda_0_IBUF_69 : STD_LOGIC; 
  signal encoda_1_IBUF_76 : STD_LOGIC; 
  signal encodb_0_IBUF_91 : STD_LOGIC; 
  signal encodb_1_IBUF_96 : STD_LOGIC; 
  signal count_1_rt_114 : STD_LOGIC; 
  signal count_2_rt_111 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal ProtoComp34_CYINITGND_0 : STD_LOGIC; 
  signal count_3_rt_102 : STD_LOGIC; 
  signal count_4_rt_139 : STD_LOGIC; 
  signal count_5_rt_136 : STD_LOGIC; 
  signal count_6_rt_133 : STD_LOGIC; 
  signal count_7_rt_124 : STD_LOGIC; 
  signal count_8_rt_161 : STD_LOGIC; 
  signal count_9_rt_158 : STD_LOGIC; 
  signal count_10_rt_155 : STD_LOGIC; 
  signal count_11_rt_146 : STD_LOGIC; 
  signal count_12_rt_177 : STD_LOGIC; 
  signal count_13_rt_174 : STD_LOGIC; 
  signal count_14_rt_172 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_189 : STD_LOGIC; 
  signal digit_14_OBUF_197 : STD_LOGIC; 
  signal digit_11_OBUF_200 : STD_LOGIC; 
  signal digit_13_OBUF_213 : STD_LOGIC; 
  signal digit_17_OBUF_216 : STD_LOGIC; 
  signal leds_6_GND_1_o_equal_41_o : STD_LOGIC; 
  signal digit_9_OBUF_248 : STD_LOGIC; 
  signal test_cnt_4_dpot_255 : STD_LOGIC; 
  signal count_31_GND_1_o_equal_40_o_31_3_rstpot_pack_2 : STD_LOGIC; 
  signal poin_dpot1_268 : STD_LOGIC; 
  signal test_cnt_3_dpot_302 : STD_LOGIC; 
  signal test_cnt_1_dpot_294 : STD_LOGIC; 
  signal N12_pack_14 : STD_LOGIC; 
  signal test_cnt_0_dpot_324 : STD_LOGIC; 
  signal test_cnt_2_dpot_320 : STD_LOGIC; 
  signal digit_3_OBUF_338 : STD_LOGIC; 
  signal digit_1_OBUF_376 : STD_LOGIC; 
  signal count_0_rstpot_397 : STD_LOGIC; 
  signal count_1_rstpot_382 : STD_LOGIC; 
  signal count_2_rstpot_431 : STD_LOGIC; 
  signal count_3_rstpot_422 : STD_LOGIC; 
  signal count_4_rstpot_415 : STD_LOGIC; 
  signal count_5_rstpot_409 : STD_LOGIC; 
  signal count_6_rstpot_456 : STD_LOGIC; 
  signal count_7_rstpot_447 : STD_LOGIC; 
  signal count_8_rstpot_440 : STD_LOGIC; 
  signal count_9_rstpot_434 : STD_LOGIC; 
  signal count_11_rstpot_481 : STD_LOGIC; 
  signal count_12_rstpot_472 : STD_LOGIC; 
  signal count_13_rstpot_465 : STD_LOGIC; 
  signal count_14_rstpot_459 : STD_LOGIC; 
  signal digit_5_OBUF_490 : STD_LOGIC; 
  signal digit_6_OBUF_485 : STD_LOGIC; 
  signal digit_0_OBUF_502 : STD_LOGIC; 
  signal count_10_pack_3 : STD_LOGIC; 
  signal count_10_rstpot_518 : STD_LOGIC; 
  signal ledcir_cnt_2_rstpot1_540 : STD_LOGIC; 
  signal ledcir_cnt_0_rstpot1_562 : STD_LOGIC; 
  signal ledcir_cnt_1_rstpot1_556 : STD_LOGIC; 
  signal ledcir_5_OBUF_567 : STD_LOGIC; 
  signal ledcir_3_OBUF_578 : STD_LOGIC; 
  signal ledcir_0_OBUF_573 : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digseg_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digit_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_leds_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_test_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_poin_CLK : STD_LOGIC; 
  signal NlwBufferSignal_test_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_test_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_test_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_test_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_leds_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_leds_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ledcir_cnt_0_CLK : STD_LOGIC; 
  signal NLW_count_15_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_digseg_5_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_count_xor_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_count_15_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal test_cnt : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal ledcir_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 14 downto 3 ); 
begin
  ledcir_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => NlwBufferSignal_ledcir_3_OBUF_I,
      O => ledcir(3)
    );
  ledcir_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => NlwBufferSignal_ledcir_4_OBUF_I,
      O => ledcir(4)
    );
  ledcir_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => NlwBufferSignal_ledcir_5_OBUF_I,
      O => ledcir(5)
    );
  leds_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD200"
    )
    port map (
      I => NlwBufferSignal_leds_0_OBUF_I,
      O => leds(0)
    );
  digseg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => '1',
      O => digseg(0)
    );
  leds_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD199"
    )
    port map (
      I => NlwBufferSignal_leds_1_OBUF_I,
      O => leds(1)
    );
  digseg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => '1',
      O => digseg(1)
    );
  leds_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_leds_2_OBUF_I,
      O => leds(2)
    );
  digseg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => '1',
      O => digseg(2)
    );
  leds_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_leds_3_OBUF_I,
      O => leds(3)
    );
  digseg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => '1',
      O => digseg(3)
    );
  leds_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_leds_4_OBUF_I,
      O => leds(4)
    );
  digseg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => '1',
      O => digseg(4)
    );
  leds_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_leds_5_OBUF_I,
      O => leds(5)
    );
  digseg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => '1',
      O => digseg(5)
    );
  leds_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_leds_6_OBUF_I,
      O => leds(6)
    );
  digseg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => '0',
      O => digseg(6)
    );
  leds_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_leds_7_OBUF_I,
      O => leds(7)
    );
  digseg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_digseg_7_OBUF_I,
      O => digseg(7)
    );
  encodAsw_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 115 ps
    )
    port map (
      O => encodAsw_IBUF_39,
      I => encodAsw
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 115 ps
    )
    port map (
      I => encodAsw_IBUF_39,
      O => encodAsw_IBUF_0
    );
  nreset_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 115 ps
    )
    port map (
      O => nreset_inv_non_inverted,
      I => nreset
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp2_IINV_OUT,
      O => nreset_inv
    );
  ProtoComp2_IINV : X_INV
    generic map(
      LOC => "PAD76",
      PATHPULSE => 115 ps
    )
    port map (
      I => nreset_inv_non_inverted,
      O => ProtoComp2_IINV_OUT
    );
  encodBsw_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 115 ps
    )
    port map (
      O => encodBsw_IBUF_46,
      I => encodBsw
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 115 ps
    )
    port map (
      I => encodBsw_IBUF_46,
      O => encodBsw_IBUF_0
    );
  digit_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => NlwBufferSignal_digit_0_OBUF_I,
      O => digit(0)
    );
  digit_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => NlwBufferSignal_digit_1_OBUF_I,
      O => digit(1)
    );
  digit_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => NlwBufferSignal_digit_2_OBUF_I,
      O => digit(2)
    );
  digit_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_digit_10_OBUF_I,
      O => digit(10)
    );
  digit_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => NlwBufferSignal_digit_3_OBUF_I,
      O => digit(3)
    );
  digit_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_digit_11_OBUF_I,
      O => digit(11)
    );
  digit_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_digit_4_OBUF_I,
      O => digit(4)
    );
  digit_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_digit_12_OBUF_I,
      O => digit(12)
    );
  digit_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => NlwBufferSignal_digit_5_OBUF_I,
      O => digit(5)
    );
  digit_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_digit_13_OBUF_I,
      O => digit(13)
    );
  encoda_0_IBUF : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 115 ps
    )
    port map (
      O => encoda_0_IBUF_69,
      I => encoda(0)
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 115 ps
    )
    port map (
      I => encoda_0_IBUF_69,
      O => encoda_0_IBUF_0
    );
  digit_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_digit_6_OBUF_I,
      O => digit(6)
    );
  digit_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_digit_14_OBUF_I,
      O => digit(14)
    );
  encoda_1_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 115 ps
    )
    port map (
      O => encoda_1_IBUF_76,
      I => encoda(1)
    );
  ProtoComp1_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 115 ps
    )
    port map (
      I => encoda_1_IBUF_76,
      O => encoda_1_IBUF_0
    );
  digit_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_digit_7_OBUF_I,
      O => digit(7)
    );
  digit_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => NlwBufferSignal_digit_15_OBUF_I,
      O => digit(15)
    );
  digit_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_digit_8_OBUF_I,
      O => digit(8)
    );
  digit_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_digit_16_OBUF_I,
      O => digit(16)
    );
  digit_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_digit_9_OBUF_I,
      O => digit(9)
    );
  digit_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => NlwBufferSignal_digit_17_OBUF_I,
      O => digit(17)
    );
  encodb_0_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 115 ps
    )
    port map (
      O => encodb_0_IBUF_91,
      I => encodb(0)
    );
  ProtoComp1_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 115 ps
    )
    port map (
      I => encodb_0_IBUF_91,
      O => encodb_0_IBUF_0
    );
  digit_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_digit_18_OBUF_I,
      O => digit(18)
    );
  encodb_1_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 115 ps
    )
    port map (
      O => encodb_1_IBUF_96,
      I => encodb(1)
    );
  ProtoComp1_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 115 ps
    )
    port map (
      I => encodb_1_IBUF_96,
      O => encodb_1_IBUF_0
    );
  digit_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_digit_19_OBUF_I,
      O => digit(19)
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y7",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  Mcount_count_cy_3_Mcount_count_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  Mcount_count_cy_3_Mcount_count_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result_2_1,
      O => Result_2_1_0
    );
  Mcount_count_cy_3_Mcount_count_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result_1_1,
      O => Result_1_1_0
    );
  Mcount_count_cy_3_Mcount_count_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result_0_1,
      O => Result_0_1_0
    );
  count_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => count(3),
      ADR5 => '1',
      O => count_3_rt_102
    );
  count_15_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp34_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y35"
    )
    port map (
      O => ProtoComp34_CYINITGND_0
    );
  Mcount_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y35"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp34_CYINITGND_0,
      CO(3) => Mcount_count_cy_3_Q_730,
      CO(2) => NLW_Mcount_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result_2_1,
      O(1) => Result_1_1,
      O(0) => Result_0_1,
      S(3) => count_3_rt_102,
      S(2) => count_2_rt_111,
      S(1) => count_1_rt_114,
      S(0) => Mcount_count_lut(0)
    );
  count_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => count(2),
      ADR5 => '1',
      O => count_2_rt_111
    );
  count_15_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_4_C5LUT_O_UNCONNECTED
    );
  count_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => count(1),
      ADR5 => '1',
      O => count_1_rt_114
    );
  count_15_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_3_B5LUT_O_UNCONNECTED
    );
  Mcount_count_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => count(0),
      ADR5 => '1',
      O => Mcount_count_lut(0)
    );
  digseg_5_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_digseg_5_OBUF_A5LUT_O_UNCONNECTED
    );
  Mcount_count_cy_7_Mcount_count_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(7),
      O => Result_7_0
    );
  Mcount_count_cy_7_Mcount_count_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(6),
      O => Result_6_0
    );
  Mcount_count_cy_7_Mcount_count_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  Mcount_count_cy_7_Mcount_count_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  count_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => count(7),
      ADR5 => '1',
      O => count_7_rt_124
    );
  count_15_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_9_D5LUT_O_UNCONNECTED
    );
  Mcount_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y36"
    )
    port map (
      CI => Mcount_count_cy_3_Q_730,
      CYINIT => '0',
      CO(3) => Mcount_count_cy_7_Q_731,
      CO(2) => NLW_Mcount_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => count_7_rt_124,
      S(2) => count_6_rt_133,
      S(1) => count_5_rt_136,
      S(0) => count_4_rt_139
    );
  count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => count(6),
      ADR5 => '1',
      O => count_6_rt_133
    );
  count_15_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_8_C5LUT_O_UNCONNECTED
    );
  count_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => count(5),
      ADR5 => '1',
      O => count_5_rt_136
    );
  count_15_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_7_B5LUT_O_UNCONNECTED
    );
  count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => count(4),
      ADR5 => '1',
      O => count_4_rt_139
    );
  count_15_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_6_A5LUT_O_UNCONNECTED
    );
  Mcount_count_cy_11_Mcount_count_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(11),
      O => Result_11_0
    );
  Mcount_count_cy_11_Mcount_count_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(10),
      O => Result_10_0
    );
  Mcount_count_cy_11_Mcount_count_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(9),
      O => Result_9_0
    );
  Mcount_count_cy_11_Mcount_count_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(8),
      O => Result_8_0
    );
  count_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => count(11),
      ADR5 => '1',
      O => count_11_rt_146
    );
  count_15_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_13_D5LUT_O_UNCONNECTED
    );
  Mcount_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y37"
    )
    port map (
      CI => Mcount_count_cy_7_Q_731,
      CYINIT => '0',
      CO(3) => Mcount_count_cy_11_Q_732,
      CO(2) => NLW_Mcount_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => count_11_rt_146,
      S(2) => count_10_rt_155,
      S(1) => count_9_rt_158,
      S(0) => count_8_rt_161
    );
  count_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => count(10),
      ADR5 => '1',
      O => count_10_rt_155
    );
  count_15_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_12_C5LUT_O_UNCONNECTED
    );
  count_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => count(9),
      ADR5 => '1',
      O => count_9_rt_158
    );
  count_15_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_11_B5LUT_O_UNCONNECTED
    );
  count_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => count(8),
      ADR5 => '1',
      O => count_8_rt_161
    );
  count_15_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_10_A5LUT_O_UNCONNECTED
    );
  Result_14_Result_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(14),
      O => Result_14_0
    );
  Result_14_Result_14_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(13),
      O => Result_13_0
    );
  Result_14_Result_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Result(12),
      O => Result_12_0
    );
  Mcount_count_xor_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y38"
    )
    port map (
      CI => Mcount_count_cy_11_Q_732,
      CYINIT => '0',
      CO(3) => NLW_Mcount_count_xor_14_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_count_xor_14_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_count_xor_14_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_count_xor_14_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_count_xor_14_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_count_xor_14_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_Mcount_count_xor_14_O_3_UNCONNECTED,
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => NLW_Mcount_count_xor_14_S_3_UNCONNECTED,
      S(2) => count_14_rt_172,
      S(1) => count_13_rt_174,
      S(0) => count_12_rt_177
    );
  count_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y38",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => count(14),
      O => count_14_rt_172
    );
  count_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y38",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => count(13),
      ADR5 => '1',
      O => count_13_rt_174
    );
  count_15_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_15_B5LUT_O_UNCONNECTED
    );
  count_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => count(12),
      ADR5 => '1',
      O => count_12_rt_177
    );
  count_15_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_count_15_14_A5LUT_O_UNCONNECTED
    );
  ledcir_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => NlwBufferSignal_ledcir_0_OBUF_I,
      O => ledcir(0)
    );
  ledcir_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => NlwBufferSignal_ledcir_1_OBUF_I,
      O => ledcir(1)
    );
  ledcir_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => NlwBufferSignal_ledcir_2_OBUF_I,
      O => ledcir(2)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_189,
      I => clk
    );
  ProtoComp1_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_189,
      O => clk_BUFGP_IBUFG_0
    );
  digit_10_OBUF_digit_10_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_14_OBUF_197,
      O => digit_14_OBUF_0
    );
  sst_Mram_sel101 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => X"0000040000000400"
    )
    port map (
      ADR3 => test_cnt(1),
      ADR4 => test_cnt(2),
      ADR1 => test_cnt(3),
      ADR2 => test_cnt(0),
      ADR0 => test_cnt(4),
      ADR5 => '1',
      O => digit_10_OBUF_654
    );
  sst_Mram_sel141 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => X"04000000"
    )
    port map (
      ADR3 => test_cnt(1),
      ADR4 => test_cnt(2),
      ADR1 => test_cnt(3),
      ADR2 => test_cnt(0),
      ADR0 => test_cnt(4),
      O => digit_14_OBUF_197
    );
  digit_19_OBUF_digit_19_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_11_OBUF_200,
      O => digit_11_OBUF_0
    );
  sst_Mram_sel191 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y26",
      INIT => X"0000080000000800"
    )
    port map (
      ADR1 => test_cnt(0),
      ADR0 => test_cnt(1),
      ADR2 => test_cnt(3),
      ADR4 => test_cnt(2),
      ADR3 => test_cnt(4),
      ADR5 => '1',
      O => digit_19_OBUF_674
    );
  sst_Mram_sel1111 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y26",
      INIT => X"00000080"
    )
    port map (
      ADR1 => test_cnt(0),
      ADR0 => test_cnt(1),
      ADR2 => test_cnt(3),
      ADR4 => test_cnt(2),
      ADR3 => test_cnt(4),
      O => digit_11_OBUF_200
    );
  digit_12_OBUF_digit_12_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_13_OBUF_213,
      O => digit_13_OBUF_0
    );
  sst_Mram_sel121 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"0100000001000000"
    )
    port map (
      ADR4 => test_cnt(2),
      ADR2 => test_cnt(0),
      ADR3 => test_cnt(3),
      ADR0 => test_cnt(1),
      ADR1 => test_cnt(4),
      ADR5 => '1',
      O => digit_12_OBUF_658
    );
  sst_Mram_sel131 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"10000000"
    )
    port map (
      ADR4 => test_cnt(2),
      ADR2 => test_cnt(0),
      ADR3 => test_cnt(3),
      ADR0 => test_cnt(1),
      ADR1 => test_cnt(4),
      O => digit_13_OBUF_213
    );
  digit_16_OBUF_digit_16_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_17_OBUF_216,
      O => digit_17_OBUF_0
    );
  sst_Mram_sel161 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y26",
      INIT => X"0001000000010000"
    )
    port map (
      ADR3 => test_cnt(0),
      ADR0 => test_cnt(1),
      ADR4 => test_cnt(4),
      ADR2 => test_cnt(2),
      ADR1 => test_cnt(3),
      ADR5 => '1',
      O => digit_16_OBUF_668
    );
  sst_Mram_sel171 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y26",
      INIT => X"01000000"
    )
    port map (
      ADR3 => test_cnt(0),
      ADR0 => test_cnt(1),
      ADR4 => test_cnt(4),
      ADR2 => test_cnt(2),
      ADR1 => test_cnt(3),
      O => digit_17_OBUF_216
    );
  leds_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y53",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_3_CLK,
      I => NlwBufferSignal_leds_3_IN,
      O => leds_3_641,
      RST => nreset_inv,
      SET => GND
    );
  leds_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y53",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_2_CLK,
      I => NlwBufferSignal_leds_2_IN,
      O => leds_2_640,
      RST => nreset_inv,
      SET => GND
    );
  leds_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y53",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_1_CLK,
      I => NlwBufferSignal_leds_1_IN,
      O => leds_1_639,
      RST => nreset_inv,
      SET => GND
    );
  leds_6_GND_1_o_equal_41_o_6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y53",
      INIT => X"FFFFFFFFAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => leds_5_643,
      ADR0 => leds_6_644,
      O => N0
    );
  leds_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y53",
      INIT => '1'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_0_CLK,
      I => leds_6_GND_1_o_equal_41_o,
      O => leds_0_637,
      SET => nreset_inv,
      RST => GND
    );
  leds_6_GND_1_o_equal_41_o_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X1Y53",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => leds_1_639,
      ADR3 => leds_2_640,
      ADR1 => leds_3_641,
      ADR2 => leds_0_637,
      ADR5 => leds_4_642,
      ADR4 => N0,
      O => leds_6_GND_1_o_equal_41_o
    );
  digit_8_OBUF_digit_8_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_9_OBUF_248,
      O => digit_9_OBUF_0
    );
  sst_Mram_sel81 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0000001000000010"
    )
    port map (
      ADR0 => test_cnt(0),
      ADR1 => test_cnt(4),
      ADR2 => test_cnt(3),
      ADR3 => test_cnt(2),
      ADR4 => test_cnt(1),
      ADR5 => '1',
      O => digit_8_OBUF_667
    );
  sst_Mram_sel91 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"00000020"
    )
    port map (
      ADR0 => test_cnt(0),
      ADR1 => test_cnt(4),
      ADR2 => test_cnt(3),
      ADR3 => test_cnt(2),
      ADR4 => test_cnt(1),
      O => digit_9_OBUF_248
    );
  test_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o_31_Q,
      CLK => NlwBufferSignal_test_cnt_4_CLK,
      I => test_cnt_4_dpot_255,
      O => test_cnt(4),
      RST => nreset_inv,
      SET => GND
    );
  test_cnt_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => X"01800300FF00FF00"
    )
    port map (
      ADR1 => test_cnt(3),
      ADR2 => test_cnt(2),
      ADR4 => test_cnt(1),
      ADR3 => test_cnt(4),
      ADR0 => test_cnt(0),
      ADR5 => count_31_GND_1_o_equal_40_o_31_3_rstpot_710,
      O => test_cnt_4_dpot_255
    );
  poin_poin_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => count_31_GND_1_o_equal_40_o_31_3_rstpot_pack_2,
      O => count_31_GND_1_o_equal_40_o_31_3_rstpot_710
    );
  count_31_GND_1_o_equal_40_o_31_3_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"0005000500050005"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => count(12),
      ADR3 => count(11),
      ADR0 => count(10),
      ADR5 => '1',
      O => N6
    );
  count_31_GND_1_o_equal_40_o_31_3_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"00050000"
    )
    port map (
      ADR1 => '1',
      ADR4 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR2 => count(12),
      ADR3 => count(11),
      ADR0 => count(10),
      O => count_31_GND_1_o_equal_40_o_31_3_rstpot_pack_2
    );
  poin : X_FF
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o_31_Q,
      CLK => NlwBufferSignal_poin_CLK,
      I => poin_dpot1_268,
      O => poin_647,
      RST => GND,
      SET => GND
    );
  poin_dpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"EFEFEFEF40404040"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => nreset_inv,
      ADR5 => poin_647,
      ADR1 => Mram_ppoint,
      ADR2 => count_31_GND_1_o_equal_40_o_31_3_rstpot_710,
      O => poin_dpot1_268
    );
  test_cnt_1_test_cnt_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N12_pack_14,
      O => N12
    );
  Mram_ppoint11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"F0E4F0E0F0E4F0E0"
    )
    port map (
      ADR5 => '1',
      ADR2 => test_cnt(4),
      ADR0 => test_cnt(2),
      ADR3 => test_cnt(1),
      ADR1 => test_cnt(3),
      ADR4 => test_cnt(0),
      O => Mram_ppoint
    );
  count_31_GND_1_o_equal_40_o_31_3_rstpot_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"0606066606060666"
    )
    port map (
      ADR0 => test_cnt(0),
      ADR1 => test_cnt(1),
      ADR2 => test_cnt(4),
      ADR4 => test_cnt(3),
      ADR3 => test_cnt(2),
      ADR5 => '1',
      O => N8
    );
  count_31_GND_1_o_equal_40_o_31_3_rstpot_SW3 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"070F0800"
    )
    port map (
      ADR0 => test_cnt(0),
      ADR1 => test_cnt(1),
      ADR2 => test_cnt(4),
      ADR4 => test_cnt(3),
      ADR3 => test_cnt(2),
      O => N12_pack_14
    );
  test_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o_31_1_702,
      CLK => NlwBufferSignal_test_cnt_1_CLK,
      I => test_cnt_1_dpot_294,
      O => test_cnt(1),
      RST => nreset_inv,
      SET => GND
    );
  test_cnt_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"F0F0F0F0F1E0F0F0"
    )
    port map (
      ADR0 => count(12),
      ADR4 => count_31_GND_1_o_equal_40_o_31_Q,
      ADR1 => count(11),
      ADR2 => test_cnt(1),
      ADR5 => count(10),
      ADR3 => N8,
      O => test_cnt_1_dpot_294
    );
  test_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o_31_1_702,
      CLK => NlwBufferSignal_test_cnt_3_CLK,
      I => test_cnt_3_dpot_302,
      O => test_cnt(3),
      RST => nreset_inv,
      SET => GND
    );
  test_cnt_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"FFFEFFFF00020000"
    )
    port map (
      ADR2 => count(12),
      ADR4 => count_31_GND_1_o_equal_40_o_31_Q,
      ADR1 => count(11),
      ADR5 => test_cnt(3),
      ADR3 => count(10),
      ADR0 => N12,
      O => test_cnt_3_dpot_302
    );
  count_31_GND_1_o_equal_40_o_31_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => count(12),
      ADR5 => count(11),
      ADR4 => count(10),
      O => N4
    );
  test_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o_31_1_702,
      CLK => NlwBufferSignal_test_cnt_2_CLK,
      I => test_cnt_2_dpot_320,
      O => test_cnt(2),
      RST => nreset_inv,
      SET => GND
    );
  test_cnt_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"AA06AA0AAAAAAAAA"
    )
    port map (
      ADR2 => test_cnt(4),
      ADR1 => test_cnt(0),
      ADR4 => test_cnt(1),
      ADR0 => test_cnt(2),
      ADR5 => count_31_GND_1_o_equal_40_o_31_Q,
      ADR3 => N4,
      O => test_cnt_2_dpot_320
    );
  test_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o_31_1_702,
      CLK => NlwBufferSignal_test_cnt_0_CLK,
      I => test_cnt_0_dpot_324,
      O => test_cnt(0),
      RST => nreset_inv,
      SET => GND
    );
  test_cnt_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"333304CCFFFF0000"
    )
    port map (
      ADR1 => N6,
      ADR5 => count_31_GND_1_o_equal_40_o_31_Q,
      ADR0 => test_cnt(2),
      ADR4 => test_cnt(0),
      ADR2 => test_cnt(3),
      ADR3 => test_cnt(4),
      O => test_cnt_0_dpot_324
    );
  digit_18_OBUF_digit_18_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_3_OBUF_338,
      O => digit_3_OBUF_0
    );
  sst_Mram_sel181 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y19",
      INIT => X"0010000000100000"
    )
    port map (
      ADR4 => test_cnt(1),
      ADR3 => test_cnt(0),
      ADR2 => test_cnt(4),
      ADR1 => test_cnt(3),
      ADR0 => test_cnt(2),
      ADR5 => '1',
      O => digit_18_OBUF_672
    );
  sst_Mram_sel31 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y19",
      INIT => X"01000000"
    )
    port map (
      ADR4 => test_cnt(1),
      ADR3 => test_cnt(0),
      ADR2 => test_cnt(4),
      ADR1 => test_cnt(3),
      ADR0 => test_cnt(2),
      O => digit_3_OBUF_338
    );
  leds_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_7_CLK,
      I => NlwBufferSignal_leds_7_IN,
      O => leds_7_646,
      RST => nreset_inv,
      SET => GND
    );
  leds_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_6_CLK,
      I => NlwBufferSignal_leds_6_IN,
      O => leds_6_644,
      RST => nreset_inv,
      SET => GND
    );
  count_31_GND_1_o_equal_40_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => X"0000030000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => count(12),
      ADR4 => count(10),
      ADR2 => count(11),
      ADR5 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR3 => count_31_GND_1_o_equal_40_o_31_Q,
      O => count_31_GND_1_o_equal_40_o
    );
  leds_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_5_CLK,
      I => NlwBufferSignal_leds_5_IN,
      O => leds_5_643,
      RST => nreset_inv,
      SET => GND
    );
  count_31_GND_1_o_equal_40_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => count(5),
      ADR4 => count(3),
      ADR1 => count(8),
      ADR5 => count(7),
      ADR0 => count(14),
      ADR3 => count(13),
      O => count_31_GND_1_o_equal_40_o_31_Q
    );
  leds_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => '0'
    )
    port map (
      CE => count_31_GND_1_o_equal_40_o,
      CLK => NlwBufferSignal_leds_4_CLK,
      I => NlwBufferSignal_leds_4_IN,
      O => leds_4_642,
      RST => nreset_inv,
      SET => GND
    );
  Q_n02141 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => X"0000000000040000"
    )
    port map (
      ADR0 => count(10),
      ADR2 => count(11),
      ADR5 => count(12),
      ADR3 => N2,
      ADR1 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR4 => count_31_GND_1_o_equal_40_o_31_Q,
      O => Q_n0214
    );
  digit_15_OBUF_digit_15_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_1_OBUF_376,
      O => digit_1_OBUF_0
    );
  sst_Mram_sel151 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"0800000008000000"
    )
    port map (
      ADR4 => test_cnt(2),
      ADR0 => test_cnt(3),
      ADR3 => test_cnt(0),
      ADR1 => test_cnt(1),
      ADR2 => test_cnt(4),
      ADR5 => '1',
      O => digit_15_OBUF_666
    );
  sst_Mram_sel111 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"00000100"
    )
    port map (
      ADR4 => test_cnt(2),
      ADR0 => test_cnt(3),
      ADR3 => test_cnt(0),
      ADR1 => test_cnt(1),
      ADR2 => test_cnt(4),
      O => digit_1_OBUF_376
    );
  Q_n02111 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"0000000000000400"
    )
    port map (
      ADR0 => nreset_inv,
      ADR5 => count(12),
      ADR4 => count(10),
      ADR2 => count(11),
      ADR1 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR3 => count_31_GND_1_o_equal_40_o_31_Q,
      O => Q_n0211
    );
  count_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_1_CLK,
      I => count_1_rstpot_382,
      O => count(1),
      RST => GND,
      SET => GND
    );
  count_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"00000000FFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => nreset_inv,
      ADR4 => count(1),
      ADR0 => Result_1_1_0,
      ADR5 => Q_n0211,
      O => count_1_rstpot_382
    );
  count_31_GND_1_o_equal_40_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => count(1),
      ADR0 => count(0),
      ADR1 => count(2),
      ADR3 => count(4),
      ADR4 => count(6),
      ADR2 => count(9),
      O => count_31_GND_1_o_equal_40_o_31_1_702
    );
  count_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_0_CLK,
      I => count_0_rstpot_397,
      O => count(0),
      RST => GND,
      SET => GND
    );
  count_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"BB8BBBBB88888888"
    )
    port map (
      ADR5 => Result_0_1_0,
      ADR1 => nreset_inv,
      ADR2 => count_31_GND_1_o_equal_40_o_31_Q,
      ADR0 => count(0),
      ADR3 => N4,
      ADR4 => count_31_GND_1_o_equal_40_o_31_1_702,
      O => count_0_rstpot_397
    );
  count_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_5_CLK,
      I => count_5_rstpot_409,
      O => count(5),
      RST => GND,
      SET => GND
    );
  count_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => X"3333330000330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => nreset_inv,
      ADR5 => count(5),
      ADR4 => Result_5_0,
      ADR1 => Q_n0211,
      O => count_5_rstpot_409
    );
  count_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_4_CLK,
      I => count_4_rstpot_415,
      O => count(4),
      RST => GND,
      SET => GND
    );
  count_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => X"00000000FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => nreset_inv,
      ADR4 => count(4),
      ADR2 => Result_4_0,
      ADR5 => Q_n0211,
      O => count_4_rstpot_415
    );
  count_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_3_CLK,
      I => count_3_rstpot_422,
      O => count(3),
      RST => GND,
      SET => GND
    );
  count_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => X"0E0E04040E0E0404"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => nreset_inv,
      ADR4 => count(3),
      ADR1 => Result_3_0,
      ADR2 => Q_n0211,
      O => count_3_rstpot_422
    );
  count_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_2_CLK,
      I => count_2_rstpot_431,
      O => count(2),
      RST => GND,
      SET => GND
    );
  count_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => X"0F0C0F0C000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => nreset_inv,
      ADR5 => count(2),
      ADR1 => Result_2_1_0,
      ADR2 => Q_n0211,
      O => count_2_rstpot_431
    );
  count_9 : X_FF
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_9_CLK,
      I => count_9_rstpot_434,
      O => count(9),
      RST => GND,
      SET => GND
    );
  count_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => X"3333330000003300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => nreset_inv,
      ADR5 => count(9),
      ADR3 => Result_9_0,
      ADR1 => Q_n0211,
      O => count_9_rstpot_434
    );
  count_8 : X_FF
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_8_CLK,
      I => count_8_rstpot_440,
      O => count(8),
      RST => GND,
      SET => GND
    );
  count_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => X"00000000FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => nreset_inv,
      ADR4 => count(8),
      ADR2 => Result_8_0,
      ADR5 => Q_n0211,
      O => count_8_rstpot_440
    );
  count_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_7_CLK,
      I => count_7_rstpot_447,
      O => count(7),
      RST => GND,
      SET => GND
    );
  count_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => X"00FF000000AA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => nreset_inv,
      ADR4 => count(7),
      ADR0 => Result_7_0,
      ADR3 => Q_n0211,
      O => count_7_rstpot_447
    );
  count_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_6_CLK,
      I => count_6_rstpot_456,
      O => count(6),
      RST => GND,
      SET => GND
    );
  count_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => X"0F0C0F0C000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => nreset_inv,
      ADR5 => count(6),
      ADR1 => Result_6_0,
      ADR2 => Q_n0211,
      O => count_6_rstpot_456
    );
  count_14 : X_FF
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_14_CLK,
      I => count_14_rstpot_459,
      O => count(14),
      RST => GND,
      SET => GND
    );
  count_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => X"00000000FF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => nreset_inv,
      ADR3 => count(14),
      ADR1 => Result_14_0,
      ADR5 => Q_n0211,
      O => count_14_rstpot_459
    );
  count_13 : X_FF
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_13_CLK,
      I => count_13_rstpot_465,
      O => count(13),
      RST => GND,
      SET => GND
    );
  count_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => X"00000000FFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => nreset_inv,
      ADR4 => count(13),
      ADR0 => Result_13_0,
      ADR5 => Q_n0211,
      O => count_13_rstpot_465
    );
  count_12 : X_FF
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_12_CLK,
      I => count_12_rstpot_472,
      O => count(12),
      RST => GND,
      SET => GND
    );
  count_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => X"0F0A000A0F0A000A"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => nreset_inv,
      ADR4 => count(12),
      ADR0 => Result_12_0,
      ADR2 => Q_n0211,
      O => count_12_rstpot_472
    );
  count_11 : X_FF
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_11_CLK,
      I => count_11_rstpot_481,
      O => count(11),
      RST => GND,
      SET => GND
    );
  count_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y38",
      INIT => X"0F0F0F00000F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => nreset_inv,
      ADR5 => count(11),
      ADR4 => Result_11_0,
      ADR2 => Q_n0211,
      O => count_11_rstpot_481
    );
  digit_2_OBUF_digit_2_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_6_OBUF_485,
      O => digit_6_OBUF_0
    );
  digit_2_OBUF_digit_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_5_OBUF_490,
      O => digit_5_OBUF_0
    );
  sst_Mram_sel21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0000010000000100"
    )
    port map (
      ADR4 => test_cnt(2),
      ADR0 => test_cnt(3),
      ADR3 => test_cnt(1),
      ADR2 => test_cnt(0),
      ADR1 => test_cnt(4),
      ADR5 => '1',
      O => digit_2_OBUF_653
    );
  sst_Mram_sel61 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"01000000"
    )
    port map (
      ADR4 => test_cnt(2),
      ADR0 => test_cnt(3),
      ADR3 => test_cnt(1),
      ADR2 => test_cnt(0),
      ADR1 => test_cnt(4),
      O => digit_6_OBUF_485
    );
  sst_Mram_sel41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0000000400000004"
    )
    port map (
      ADR0 => test_cnt(0),
      ADR2 => test_cnt(3),
      ADR1 => test_cnt(2),
      ADR3 => test_cnt(1),
      ADR4 => test_cnt(4),
      ADR5 => '1',
      O => digit_4_OBUF_657
    );
  sst_Mram_sel51 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00000008"
    )
    port map (
      ADR0 => test_cnt(0),
      ADR2 => test_cnt(3),
      ADR1 => test_cnt(2),
      ADR3 => test_cnt(1),
      ADR4 => test_cnt(4),
      O => digit_5_OBUF_490
    );
  digit_7_OBUF_digit_7_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_0_OBUF_502,
      O => digit_0_OBUF_0
    );
  sst_Mram_sel71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"0200000002000000"
    )
    port map (
      ADR4 => test_cnt(0),
      ADR3 => test_cnt(1),
      ADR2 => test_cnt(3),
      ADR1 => test_cnt(4),
      ADR0 => test_cnt(2),
      ADR5 => '1',
      O => digit_7_OBUF_665
    );
  sst_Mram_sel15 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00000001"
    )
    port map (
      ADR4 => test_cnt(0),
      ADR3 => test_cnt(1),
      ADR2 => test_cnt(3),
      ADR1 => test_cnt(4),
      ADR0 => test_cnt(2),
      O => digit_0_OBUF_502
    );
  N16_N16_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => count_10_pack_3,
      O => count(10)
    );
  count_31_GND_1_o_equal_40_o_31_3_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => nreset_inv,
      ADR5 => count(11),
      ADR3 => count(10),
      O => N16
    );
  count_31_GND_1_o_equal_40_o_31_3_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"EEEEEEEEEEEEEEEE"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => nreset_inv,
      ADR0 => count(10),
      ADR5 => '1',
      O => N14
    );
  count_10_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"0000BB88"
    )
    port map (
      ADR2 => '1',
      ADR3 => Result_10_0,
      ADR4 => Q_n0211,
      ADR1 => nreset_inv,
      ADR0 => count(10),
      O => count_10_rstpot_518
    );
  count_10 : X_FF
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_10_CLK,
      I => count_10_rstpot_518,
      O => count_10_pack_3,
      RST => GND,
      SET => GND
    );
  count_31_GND_1_o_equal_40_o_31_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y46",
      INIT => X"FF33FF3FFF33FF3F"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => nreset_inv,
      ADR1 => ledcir_cnt(2),
      ADR4 => ledcir_cnt(1),
      ADR2 => ledcir_cnt(0),
      O => N2
    );
  count_31_GND_1_o_equal_40_o_31_3_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y46",
      INIT => X"FFFFFFFCFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => nreset_inv,
      ADR3 => count(12),
      ADR2 => count(11),
      ADR4 => count(10),
      O => N18
    );
  ledcir_cnt_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y46",
      INIT => X"C6CCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => ledcir_cnt(2),
      ADR0 => ledcir_cnt(1),
      ADR5 => ledcir_cnt(0),
      ADR2 => N18,
      ADR4 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR3 => count_31_GND_1_o_equal_40_o_31_Q,
      O => ledcir_cnt_2_rstpot_736
    );
  ledcir_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ledcir_cnt_2_CLK,
      I => ledcir_cnt_2_rstpot1_540,
      O => ledcir_cnt(2),
      RST => GND,
      SET => GND
    );
  ledcir_cnt_2_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y46",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Q_n0214,
      ADR4 => ledcir_cnt_2_rstpot_736,
      O => ledcir_cnt_2_rstpot1_540
    );
  ledcir_cnt_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y46",
      INIT => X"AAAAAAAAA6AAAAAA"
    )
    port map (
      ADR0 => ledcir_cnt(1),
      ADR1 => ledcir_cnt(0),
      ADR5 => count(12),
      ADR2 => N16,
      ADR3 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR4 => count_31_GND_1_o_equal_40_o_31_Q,
      O => ledcir_cnt_1_rstpot_739
    );
  ledcir_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ledcir_cnt_1_CLK,
      I => ledcir_cnt_1_rstpot1_556,
      O => ledcir_cnt(1),
      RST => GND,
      SET => GND
    );
  ledcir_cnt_1_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y46",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Q_n0214,
      ADR5 => ledcir_cnt_1_rstpot_739,
      O => ledcir_cnt_1_rstpot1_556
    );
  ledcir_cnt_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y46",
      INIT => X"AAAAA9AAAAAAAAAA"
    )
    port map (
      ADR0 => ledcir_cnt(0),
      ADR2 => count(11),
      ADR4 => count(12),
      ADR1 => N14,
      ADR5 => count_31_GND_1_o_equal_40_o_31_1_702,
      ADR3 => count_31_GND_1_o_equal_40_o_31_Q,
      O => ledcir_cnt_0_rstpot_738
    );
  ledcir_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ledcir_cnt_0_CLK,
      I => ledcir_cnt_0_rstpot1_562,
      O => ledcir_cnt(0),
      RST => GND,
      SET => GND
    );
  ledcir_cnt_0_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y46",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Q_n0214,
      ADR4 => ledcir_cnt_0_rstpot_738,
      O => ledcir_cnt_0_rstpot1_562
    );
  ledcir_1_OBUF_ledcir_1_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_5_OBUF_567,
      O => ledcir_5_OBUF_0
    );
  rotc_Mram_ledcir111 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y46",
      INIT => X"0000FF0F0000FF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ledcir_cnt(1),
      ADR2 => ledcir_cnt(2),
      ADR3 => ledcir_cnt(0),
      ADR5 => '1',
      O => ledcir_1_OBUF_721
    );
  rotc_Mram_ledcir51 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y46",
      INIT => X"0F00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ledcir_cnt(1),
      ADR2 => ledcir_cnt(2),
      ADR3 => ledcir_cnt(0),
      O => ledcir_5_OBUF_567
    );
  ledcir_2_OBUF_ledcir_2_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_0_OBUF_573,
      O => ledcir_0_OBUF_0
    );
  ledcir_2_OBUF_ledcir_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_3_OBUF_578,
      O => ledcir_3_OBUF_0
    );
  rotc_Mram_ledcir21 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"03030F0F03030F0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ledcir_cnt(2),
      ADR1 => ledcir_cnt(0),
      ADR4 => ledcir_cnt(1),
      ADR5 => '1',
      O => ledcir_2_OBUF_724
    );
  rotc_Mram_ledcir12 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"0000F3F3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ledcir_cnt(2),
      ADR1 => ledcir_cnt(0),
      ADR4 => ledcir_cnt(1),
      O => ledcir_0_OBUF_573
    );
  rotc_Mram_ledcir41 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"0F0F30300F0F3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ledcir_cnt(1),
      ADR2 => ledcir_cnt(2),
      ADR1 => ledcir_cnt(0),
      ADR5 => '1',
      O => ledcir_4_OBUF_635
    );
  rotc_Mram_ledcir31 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"0F0F0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ledcir_cnt(1),
      ADR2 => ledcir_cnt(2),
      ADR1 => ledcir_cnt(0),
      O => ledcir_3_OBUF_578
    );
  NlwBufferBlock_ledcir_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_3_OBUF_0,
      O => NlwBufferSignal_ledcir_3_OBUF_I
    );
  NlwBufferBlock_ledcir_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_4_OBUF_635,
      O => NlwBufferSignal_ledcir_4_OBUF_I
    );
  NlwBufferBlock_ledcir_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_5_OBUF_0,
      O => NlwBufferSignal_ledcir_5_OBUF_I
    );
  NlwBufferBlock_leds_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_0_637,
      O => NlwBufferSignal_leds_0_OBUF_I
    );
  NlwBufferBlock_leds_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_1_639,
      O => NlwBufferSignal_leds_1_OBUF_I
    );
  NlwBufferBlock_leds_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_2_640,
      O => NlwBufferSignal_leds_2_OBUF_I
    );
  NlwBufferBlock_leds_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_3_641,
      O => NlwBufferSignal_leds_3_OBUF_I
    );
  NlwBufferBlock_leds_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_4_642,
      O => NlwBufferSignal_leds_4_OBUF_I
    );
  NlwBufferBlock_leds_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_5_643,
      O => NlwBufferSignal_leds_5_OBUF_I
    );
  NlwBufferBlock_leds_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_6_644,
      O => NlwBufferSignal_leds_6_OBUF_I
    );
  NlwBufferBlock_leds_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_7_646,
      O => NlwBufferSignal_leds_7_OBUF_I
    );
  NlwBufferBlock_digseg_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => poin_647,
      O => NlwBufferSignal_digseg_7_OBUF_I
    );
  NlwBufferBlock_digit_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_0_OBUF_0,
      O => NlwBufferSignal_digit_0_OBUF_I
    );
  NlwBufferBlock_digit_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_1_OBUF_0,
      O => NlwBufferSignal_digit_1_OBUF_I
    );
  NlwBufferBlock_digit_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_2_OBUF_653,
      O => NlwBufferSignal_digit_2_OBUF_I
    );
  NlwBufferBlock_digit_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_10_OBUF_654,
      O => NlwBufferSignal_digit_10_OBUF_I
    );
  NlwBufferBlock_digit_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_3_OBUF_0,
      O => NlwBufferSignal_digit_3_OBUF_I
    );
  NlwBufferBlock_digit_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_11_OBUF_0,
      O => NlwBufferSignal_digit_11_OBUF_I
    );
  NlwBufferBlock_digit_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_4_OBUF_657,
      O => NlwBufferSignal_digit_4_OBUF_I
    );
  NlwBufferBlock_digit_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_12_OBUF_658,
      O => NlwBufferSignal_digit_12_OBUF_I
    );
  NlwBufferBlock_digit_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_5_OBUF_0,
      O => NlwBufferSignal_digit_5_OBUF_I
    );
  NlwBufferBlock_digit_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_13_OBUF_0,
      O => NlwBufferSignal_digit_13_OBUF_I
    );
  NlwBufferBlock_digit_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_6_OBUF_0,
      O => NlwBufferSignal_digit_6_OBUF_I
    );
  NlwBufferBlock_digit_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_14_OBUF_0,
      O => NlwBufferSignal_digit_14_OBUF_I
    );
  NlwBufferBlock_digit_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_7_OBUF_665,
      O => NlwBufferSignal_digit_7_OBUF_I
    );
  NlwBufferBlock_digit_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_15_OBUF_666,
      O => NlwBufferSignal_digit_15_OBUF_I
    );
  NlwBufferBlock_digit_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_8_OBUF_667,
      O => NlwBufferSignal_digit_8_OBUF_I
    );
  NlwBufferBlock_digit_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_16_OBUF_668,
      O => NlwBufferSignal_digit_16_OBUF_I
    );
  NlwBufferBlock_digit_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_9_OBUF_0,
      O => NlwBufferSignal_digit_9_OBUF_I
    );
  NlwBufferBlock_digit_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_17_OBUF_0,
      O => NlwBufferSignal_digit_17_OBUF_I
    );
  NlwBufferBlock_digit_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_18_OBUF_672,
      O => NlwBufferSignal_digit_18_OBUF_I
    );
  NlwBufferBlock_digit_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => digit_19_OBUF_674,
      O => NlwBufferSignal_digit_19_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_ledcir_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_0_OBUF_0,
      O => NlwBufferSignal_ledcir_0_OBUF_I
    );
  NlwBufferBlock_ledcir_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_1_OBUF_721,
      O => NlwBufferSignal_ledcir_1_OBUF_I
    );
  NlwBufferBlock_ledcir_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ledcir_2_OBUF_724,
      O => NlwBufferSignal_ledcir_2_OBUF_I
    );
  NlwBufferBlock_leds_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_3_CLK
    );
  NlwBufferBlock_leds_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_2_640,
      O => NlwBufferSignal_leds_3_IN
    );
  NlwBufferBlock_leds_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_2_CLK
    );
  NlwBufferBlock_leds_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_1_639,
      O => NlwBufferSignal_leds_2_IN
    );
  NlwBufferBlock_leds_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_1_CLK
    );
  NlwBufferBlock_leds_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_0_637,
      O => NlwBufferSignal_leds_1_IN
    );
  NlwBufferBlock_leds_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_0_CLK
    );
  NlwBufferBlock_test_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_test_cnt_4_CLK
    );
  NlwBufferBlock_poin_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_poin_CLK
    );
  NlwBufferBlock_test_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_test_cnt_1_CLK
    );
  NlwBufferBlock_test_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_test_cnt_3_CLK
    );
  NlwBufferBlock_test_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_test_cnt_2_CLK
    );
  NlwBufferBlock_test_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_test_cnt_0_CLK
    );
  NlwBufferBlock_leds_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_7_CLK
    );
  NlwBufferBlock_leds_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_6_644,
      O => NlwBufferSignal_leds_7_IN
    );
  NlwBufferBlock_leds_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_6_CLK
    );
  NlwBufferBlock_leds_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_5_643,
      O => NlwBufferSignal_leds_6_IN
    );
  NlwBufferBlock_leds_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_5_CLK
    );
  NlwBufferBlock_leds_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_4_642,
      O => NlwBufferSignal_leds_5_IN
    );
  NlwBufferBlock_leds_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_leds_4_CLK
    );
  NlwBufferBlock_leds_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => leds_3_641,
      O => NlwBufferSignal_leds_4_IN
    );
  NlwBufferBlock_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_1_CLK
    );
  NlwBufferBlock_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_0_CLK
    );
  NlwBufferBlock_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_5_CLK
    );
  NlwBufferBlock_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_4_CLK
    );
  NlwBufferBlock_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_3_CLK
    );
  NlwBufferBlock_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_2_CLK
    );
  NlwBufferBlock_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_9_CLK
    );
  NlwBufferBlock_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_8_CLK
    );
  NlwBufferBlock_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_7_CLK
    );
  NlwBufferBlock_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_6_CLK
    );
  NlwBufferBlock_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_14_CLK
    );
  NlwBufferBlock_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_13_CLK
    );
  NlwBufferBlock_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_12_CLK
    );
  NlwBufferBlock_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_11_CLK
    );
  NlwBufferBlock_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_10_CLK
    );
  NlwBufferBlock_ledcir_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ledcir_cnt_2_CLK
    );
  NlwBufferBlock_ledcir_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ledcir_cnt_1_CLK
    );
  NlwBufferBlock_ledcir_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ledcir_cnt_0_CLK
    );
  NlwBlock_runled_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_runled_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

