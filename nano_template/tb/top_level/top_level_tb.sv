`timescale 10ns / 10ps


module top_level_tb
( 
   

);

//Stimulus output signals
wire  Stimulus_CLK50MHZ_o_s; 
wire [1:0] Stimulus_KEY_o_s; 
wire [3:0] Stimulus_SWITCH_o_s; 
wire [12:0] top_level_DRAM_ADDR_s; 
wire [15:0] top_level_DRAM_DATA_s; 
wire [1:0] top_level_DRAM_BANK_ADDR_s; 
wire [1:0] top_level_DRAM_DQM_s; 
wire  top_level_DRAM_RAS_N_s; 
wire  top_level_DRAM_CAS_N_s; 
wire  top_level_DRAM_CLK_EN_s; 
wire  top_level_DRAM_CLK_s; 
wire  top_level_DRAM_WR_EN_s; 
wire  top_level_DRAM_CS_N_s; 
wire  top_level_EEPROM_SCLK_s; 
wire  Stimulus_EEPROM_SDAT_o_s; 
wire  Stimulus_G_SENSOR_INT_o_s; 
wire  top_level_G_SENSOR_CS_s; 
wire  top_level_ADC_CS_N_s; 
wire  top_level_ADC_SADDR_s; 
wire  Stimulus_ADC_SDAT_o_s; 
wire  top_level_ADC_SCLK_s; 
wire  Stimulus_JP1_1_o_s; 
wire  top_level_JP1_2_s; 
wire  Stimulus_JP1_3_o_s; 
wire  top_level_JP1_4_s; 
wire  top_level_JP1_5_s; 
wire  top_level_JP1_6_s; 
wire  top_level_JP1_7_s; 
wire  top_level_JP1_8_s; 
wire  top_level_JP1_9_s; 
wire  top_level_JP1_10_s; 
wire  top_level_JP1_13_s; 
wire  top_level_JP1_14_s; 
wire  top_level_JP1_15_s; 
wire  top_level_JP1_16_s; 
wire  top_level_JP1_17_s; 
wire  top_level_JP1_18_s; 
wire  top_level_JP1_19_s; 
wire  top_level_JP1_20_s; 
wire  top_level_JP1_21_s; 
wire  top_level_JP1_22_s; 
wire  top_level_JP1_23_s; 
wire  top_level_JP1_24_s; 
wire  top_level_JP1_25_s; 
wire  top_level_JP1_26_s; 
wire  top_level_JP1_27_s; 
wire  top_level_JP1_28_s; 
wire  top_level_JP1_31_s; 
wire  top_level_JP1_32_s; 
wire  top_level_JP1_33_s; 
wire  top_level_JP1_34_s; 
wire  top_level_JP1_35_s; 
wire  top_level_JP1_36_s; 
wire  top_level_JP1_37_s; 
wire  top_level_JP1_38_s; 
wire  top_level_JP1_39_s; 
wire  top_level_JP1_40_s; 
wire  Stimulus_JP2_1_o_s; 
wire  top_level_JP2_2_s; 
wire  Stimulus_JP2_3_o_s; 
wire  top_level_JP2_4_s; 
wire  top_level_JP2_5_s; 
wire  top_level_JP2_6_s; 
wire  top_level_JP2_7_s; 
wire  top_level_JP2_8_s; 
wire  top_level_JP2_9_s; 
wire  top_level_JP2_10_s; 
wire  top_level_JP2_13_s; 
wire  top_level_JP2_14_s; 
wire  top_level_JP2_15_s; 
wire  top_level_JP2_16_s; 
wire  top_level_JP2_17_s; 
wire  top_level_JP2_18_s; 
wire  top_level_JP2_19_s; 
wire  top_level_JP2_20_s; 
wire  top_level_JP2_21_s; 
wire  top_level_JP2_22_s; 
wire  top_level_JP2_23_s; 
wire  top_level_JP2_24_s; 
wire  top_level_JP2_25_s; 
wire  top_level_JP2_26_s; 
wire  top_level_JP2_27_s; 
wire  top_level_JP2_28_s; 
wire  top_level_JP2_31_s; 
wire  top_level_JP2_32_s; 
wire  top_level_JP2_33_s; 
wire  top_level_JP2_34_s; 
wire  top_level_JP2_35_s; 
wire  top_level_JP2_36_s; 
wire  top_level_JP2_37_s; 
wire  top_level_JP2_38_s; 
wire  top_level_JP2_39_s; 
wire  top_level_JP2_40_s; 
wire  Stimulus_JP3_2_o_s; 
wire  Stimulus_JP3_3_o_s; 
wire  Stimulus_JP3_4_o_s; 
wire  top_level_JP3_5_s; 
wire  top_level_JP3_6_s; 
wire  top_level_JP3_7_s; 
wire  top_level_JP3_8_s; 
wire  top_level_JP3_9_s; 
wire  top_level_JP3_10_s; 
wire  top_level_JP3_11_s; 
wire  top_level_JP3_12_s; 
wire  top_level_JP3_13_s; 
wire  top_level_JP3_15_s; 
wire  top_level_JP3_16_s; 
wire  top_level_JP3_17_s; 
wire [7:0] top_level_LED_s; 

top_level
top_level_inst
    (
    

    /*input              */ .CLK50MHZ(Stimulus_CLK50MHZ_o_s),
    /*input   [1:0]      */ .KEY(Stimulus_KEY_o_s),
    /*input   [3:0]      */ .SWITCH(Stimulus_SWITCH_o_s),
    /*output  [12:0]     */ .DRAM_ADDR(top_level_DRAM_ADDR_s),
    /*output  [15:0]     */ .DRAM_DATA(top_level_DRAM_DATA_s),
    /*output  [1:0]      */ .DRAM_BANK_ADDR(top_level_DRAM_BANK_ADDR_s),
    /*output  [1:0]      */ .DRAM_DQM(top_level_DRAM_DQM_s),
    /*output             */ .DRAM_RAS_N(top_level_DRAM_RAS_N_s),
    /*output             */ .DRAM_CAS_N(top_level_DRAM_CAS_N_s),
    /*output             */ .DRAM_CLK_EN(top_level_DRAM_CLK_EN_s),
    /*output             */ .DRAM_CLK(top_level_DRAM_CLK_s),
    /*output             */ .DRAM_WR_EN(top_level_DRAM_WR_EN_s),
    /*output             */ .DRAM_CS_N(top_level_DRAM_CS_N_s),
    /*output             */ .EEPROM_SCLK(top_level_EEPROM_SCLK_s),
    /*input              */ .EEPROM_SDAT(),
    /*input              */ .G_SENSOR_INT(),
    /*output             */ .G_SENSOR_CS(top_level_G_SENSOR_CS_s),
    /*output             */ .ADC_CS_N(top_level_ADC_CS_N_s),
    /*output             */ .ADC_SADDR(top_level_ADC_SADDR_s),
    /*input              */ .ADC_SDAT(),
    /*output             */ .ADC_SCLK(top_level_ADC_SCLK_s),
    /*input              */ .JP1_1(Stimulus_JP1_1_o_s),
    /*output             */ .JP1_2(top_level_JP1_2_s),
    /*input              */ .JP1_3(),
    /*output             */ .JP1_4(top_level_JP1_4_s),
    /*output             */ .JP1_5(top_level_JP1_5_s),
    /*output             */ .JP1_6(top_level_JP1_6_s),
    /*output             */ .JP1_7(top_level_JP1_7_s),
    /*output             */ .JP1_8(top_level_JP1_8_s),
    /*output             */ .JP1_9(top_level_JP1_9_s),
    /*output             */ .JP1_10(top_level_JP1_10_s),
    /*output             */ .JP1_13(top_level_JP1_13_s),
    /*output             */ .JP1_14(top_level_JP1_14_s),
    /*output             */ .JP1_15(top_level_JP1_15_s),
    /*output             */ .JP1_16(top_level_JP1_16_s),
    /*output             */ .JP1_17(top_level_JP1_17_s),
    /*output             */ .JP1_18(top_level_JP1_18_s),
    /*output             */ .JP1_19(top_level_JP1_19_s),
    /*output             */ .JP1_20(top_level_JP1_20_s),
    /*output             */ .JP1_21(top_level_JP1_21_s),
    /*output             */ .JP1_22(top_level_JP1_22_s),
    /*output             */ .JP1_23(top_level_JP1_23_s),
    /*output             */ .JP1_24(top_level_JP1_24_s),
    /*output             */ .JP1_25(top_level_JP1_25_s),
    /*output             */ .JP1_26(top_level_JP1_26_s),
    /*output             */ .JP1_27(top_level_JP1_27_s),
    /*output             */ .JP1_28(top_level_JP1_28_s),
    /*output             */ .JP1_31(top_level_JP1_31_s),
    /*output             */ .JP1_32(top_level_JP1_32_s),
    /*output             */ .JP1_33(top_level_JP1_33_s),
    /*output             */ .JP1_34(top_level_JP1_34_s),
    /*output             */ .JP1_35(top_level_JP1_35_s),
    /*output             */ .JP1_36(top_level_JP1_36_s),
    /*output             */ .JP1_37(top_level_JP1_37_s),
    /*output             */ .JP1_38(top_level_JP1_38_s),
    /*output             */ .JP1_39(top_level_JP1_39_s),
    /*output             */ .JP1_40(top_level_JP1_40_s),
    /*input              */ .JP2_1(),
    /*output             */ .JP2_2(top_level_JP2_2_s),
    /*input              */ .JP2_3(),
    /*output             */ .JP2_4(top_level_JP2_4_s),
    /*output             */ .JP2_5(top_level_JP2_5_s),
    /*output             */ .JP2_6(top_level_JP2_6_s),
    /*output             */ .JP2_7(top_level_JP2_7_s),
    /*output             */ .JP2_8(top_level_JP2_8_s),
    /*output             */ .JP2_9(top_level_JP2_9_s),
    /*output             */ .JP2_10(top_level_JP2_10_s),
    /*output             */ .JP2_13(top_level_JP2_13_s),
    /*output             */ .JP2_14(top_level_JP2_14_s),
    /*output             */ .JP2_15(top_level_JP2_15_s),
    /*output             */ .JP2_16(top_level_JP2_16_s),
    /*output             */ .JP2_17(top_level_JP2_17_s),
    /*output             */ .JP2_18(top_level_JP2_18_s),
    /*output             */ .JP2_19(top_level_JP2_19_s),
    /*output             */ .JP2_20(top_level_JP2_20_s),
    /*output             */ .JP2_21(top_level_JP2_21_s),
    /*output             */ .JP2_22(top_level_JP2_22_s),
    /*output             */ .JP2_23(top_level_JP2_23_s),
    /*output             */ .JP2_24(top_level_JP2_24_s),
    /*output             */ .JP2_25(top_level_JP2_25_s),
    /*output             */ .JP2_26(top_level_JP2_26_s),
    /*output             */ .JP2_27(top_level_JP2_27_s),
    /*output             */ .JP2_28(top_level_JP2_28_s),
    /*output             */ .JP2_31(top_level_JP2_31_s),
    /*output             */ .JP2_32(top_level_JP2_32_s),
    /*output             */ .JP2_33(top_level_JP2_33_s),
    /*output             */ .JP2_34(top_level_JP2_34_s),
    /*output             */ .JP2_35(top_level_JP2_35_s),
    /*output             */ .JP2_36(top_level_JP2_36_s),
    /*output             */ .JP2_37(top_level_JP2_37_s),
    /*output             */ .JP2_38(top_level_JP2_38_s),
    /*output             */ .JP2_39(top_level_JP2_39_s),
    /*output             */ .JP2_40(top_level_JP2_40_s),
    /*input              */ .JP3_2(),
    /*input              */ .JP3_3(),
    /*input              */ .JP3_4(),
    /*output             */ .JP3_5(top_level_JP3_5_s),
    /*output             */ .JP3_6(top_level_JP3_6_s),
    /*output             */ .JP3_7(top_level_JP3_7_s),
    /*output             */ .JP3_8(top_level_JP3_8_s),
    /*output             */ .JP3_9(top_level_JP3_9_s),
    /*output             */ .JP3_10(top_level_JP3_10_s),
    /*output             */ .JP3_11(top_level_JP3_11_s),
    /*output             */ .JP3_12(top_level_JP3_12_s),
    /*output             */ .JP3_13(top_level_JP3_13_s),
    /*output             */ .JP3_15(top_level_JP3_15_s),
    /*output             */ .JP3_16(top_level_JP3_16_s),
    /*output             */ .JP3_17(top_level_JP3_17_s),
    /*output reg [7:0]   */ .LED(top_level_LED_s)

);


Stimulus
Stimulus_inst
    (
    

    /*output             */ .CLK50MHZ_o(Stimulus_CLK50MHZ_o_s),
    /*output  [1:0]      */ .KEY_o(Stimulus_KEY_o_s),
    /*output  [3:0]      */ .SWITCH_o(Stimulus_SWITCH_o_s),
    /*input   [12:0]     */ .DRAM_ADDR_i(top_level_DRAM_ADDR_s),
    /*input   [15:0]     */ .DRAM_DATA_i(top_level_DRAM_DATA_s),
    /*input   [1:0]      */ .DRAM_BANK_ADDR_i(top_level_DRAM_BANK_ADDR_s),
    /*input   [1:0]      */ .DRAM_DQM_i(top_level_DRAM_DQM_s),
    /*input              */ .DRAM_RAS_N_i(top_level_DRAM_RAS_N_s),
    /*input              */ .DRAM_CAS_N_i(top_level_DRAM_CAS_N_s),
    /*input              */ .DRAM_CLK_EN_i(top_level_DRAM_CLK_EN_s),
    /*input              */ .DRAM_CLK_i(top_level_DRAM_CLK_s),
    /*input              */ .DRAM_WR_EN_i(top_level_DRAM_WR_EN_s),
    /*input              */ .DRAM_CS_N_i(top_level_DRAM_CS_N_s),
    /*input              */ .EEPROM_SCLK_i(top_level_EEPROM_SCLK_s),
    /*output             */ .EEPROM_SDAT_o(Stimulus_EEPROM_SDAT_o_s),
    /*output             */ .G_SENSOR_INT_o(Stimulus_G_SENSOR_INT_o_s),
    /*input              */ .G_SENSOR_CS_i(top_level_G_SENSOR_CS_s),
    /*input              */ .ADC_CS_N_i(top_level_ADC_CS_N_s),
    /*input              */ .ADC_SADDR_i(top_level_ADC_SADDR_s),
    /*output             */ .ADC_SDAT_o(Stimulus_ADC_SDAT_o_s),
    /*input              */ .ADC_SCLK_i(top_level_ADC_SCLK_s),
    /*output             */ .JP1_1_o(Stimulus_JP1_1_o_s),
    /*input              */ .JP1_2_i(top_level_JP1_2_s),
    /*output             */ .JP1_3_o(Stimulus_JP1_3_o_s),
    /*input              */ .JP1_4_i(top_level_JP1_4_s),
    /*input              */ .JP1_5_i(top_level_JP1_5_s),
    /*input              */ .JP1_6_i(top_level_JP1_6_s),
    /*input              */ .JP1_7_i(top_level_JP1_7_s),
    /*input              */ .JP1_8_i(top_level_JP1_8_s),
    /*input              */ .JP1_9_i(top_level_JP1_9_s),
    /*input              */ .JP1_10_i(top_level_JP1_10_s),
    /*input              */ .JP1_13_i(top_level_JP1_13_s),
    /*input              */ .JP1_14_i(top_level_JP1_14_s),
    /*input              */ .JP1_15_i(top_level_JP1_15_s),
    /*input              */ .JP1_16_i(top_level_JP1_16_s),
    /*input              */ .JP1_17_i(top_level_JP1_17_s),
    /*input              */ .JP1_18_i(top_level_JP1_18_s),
    /*input              */ .JP1_19_i(top_level_JP1_19_s),
    /*input              */ .JP1_20_i(top_level_JP1_20_s),
    /*input              */ .JP1_21_i(top_level_JP1_21_s),
    /*input              */ .JP1_22_i(top_level_JP1_22_s),
    /*input              */ .JP1_23_i(top_level_JP1_23_s),
    /*input              */ .JP1_24_i(top_level_JP1_24_s),
    /*input              */ .JP1_25_i(top_level_JP1_25_s),
    /*input              */ .JP1_26_i(top_level_JP1_26_s),
    /*input              */ .JP1_27_i(top_level_JP1_27_s),
    /*input              */ .JP1_28_i(top_level_JP1_28_s),
    /*input              */ .JP1_31_i(top_level_JP1_31_s),
    /*input              */ .JP1_32_i(top_level_JP1_32_s),
    /*input              */ .JP1_33_i(top_level_JP1_33_s),
    /*input              */ .JP1_34_i(top_level_JP1_34_s),
    /*input              */ .JP1_35_i(top_level_JP1_35_s),
    /*input              */ .JP1_36_i(top_level_JP1_36_s),
    /*input              */ .JP1_37_i(top_level_JP1_37_s),
    /*input              */ .JP1_38_i(top_level_JP1_38_s),
    /*input              */ .JP1_39_i(top_level_JP1_39_s),
    /*input              */ .JP1_40_i(top_level_JP1_40_s),
    /*output             */ .JP2_1_o(Stimulus_JP2_1_o_s),
    /*input              */ .JP2_2_i(top_level_JP2_2_s),
    /*output             */ .JP2_3_o(Stimulus_JP2_3_o_s),
    /*input              */ .JP2_4_i(top_level_JP2_4_s),
    /*input              */ .JP2_5_i(top_level_JP2_5_s),
    /*input              */ .JP2_6_i(top_level_JP2_6_s),
    /*input              */ .JP2_7_i(top_level_JP2_7_s),
    /*input              */ .JP2_8_i(top_level_JP2_8_s),
    /*input              */ .JP2_9_i(top_level_JP2_9_s),
    /*input              */ .JP2_10_i(top_level_JP2_10_s),
    /*input              */ .JP2_13_i(top_level_JP2_13_s),
    /*input              */ .JP2_14_i(top_level_JP2_14_s),
    /*input              */ .JP2_15_i(top_level_JP2_15_s),
    /*input              */ .JP2_16_i(top_level_JP2_16_s),
    /*input              */ .JP2_17_i(top_level_JP2_17_s),
    /*input              */ .JP2_18_i(top_level_JP2_18_s),
    /*input              */ .JP2_19_i(top_level_JP2_19_s),
    /*input              */ .JP2_20_i(top_level_JP2_20_s),
    /*input              */ .JP2_21_i(top_level_JP2_21_s),
    /*input              */ .JP2_22_i(top_level_JP2_22_s),
    /*input              */ .JP2_23_i(top_level_JP2_23_s),
    /*input              */ .JP2_24_i(top_level_JP2_24_s),
    /*input              */ .JP2_25_i(top_level_JP2_25_s),
    /*input              */ .JP2_26_i(top_level_JP2_26_s),
    /*input              */ .JP2_27_i(top_level_JP2_27_s),
    /*input              */ .JP2_28_i(top_level_JP2_28_s),
    /*input              */ .JP2_31_i(top_level_JP2_31_s),
    /*input              */ .JP2_32_i(top_level_JP2_32_s),
    /*input              */ .JP2_33_i(top_level_JP2_33_s),
    /*input              */ .JP2_34_i(top_level_JP2_34_s),
    /*input              */ .JP2_35_i(top_level_JP2_35_s),
    /*input              */ .JP2_36_i(top_level_JP2_36_s),
    /*input              */ .JP2_37_i(top_level_JP2_37_s),
    /*input              */ .JP2_38_i(top_level_JP2_38_s),
    /*input              */ .JP2_39_i(top_level_JP2_39_s),
    /*input              */ .JP2_40_i(top_level_JP2_40_s),
    /*output             */ .JP3_2_o(Stimulus_JP3_2_o_s),
    /*output             */ .JP3_3_o(Stimulus_JP3_3_o_s),
    /*output             */ .JP3_4_o(Stimulus_JP3_4_o_s),
    /*input              */ .JP3_5_i(top_level_JP3_5_s),
    /*input              */ .JP3_6_i(top_level_JP3_6_s),
    /*input              */ .JP3_7_i(top_level_JP3_7_s),
    /*input              */ .JP3_8_i(top_level_JP3_8_s),
    /*input              */ .JP3_9_i(top_level_JP3_9_s),
    /*input              */ .JP3_10_i(top_level_JP3_10_s),
    /*input              */ .JP3_11_i(top_level_JP3_11_s),
    /*input              */ .JP3_12_i(top_level_JP3_12_s),
    /*input              */ .JP3_13_i(top_level_JP3_13_s),
    /*input              */ .JP3_15_i(top_level_JP3_15_s),
    /*input              */ .JP3_16_i(top_level_JP3_16_s),
    /*input              */ .JP3_17_i(top_level_JP3_17_s),
    /*input  reg [7:0]   */ .LED_i(top_level_LED_s)

);


ScoreBoard
ScoreBoard_inst
    (
    

    /*input              */ .top_level_CLK50MHZ(Stimulus_CLK50MHZ_o_s),
    /*input   [1:0]      */ .top_level_KEY(),
    /*input   [3:0]      */ .top_level_SWITCH(),
    /*input   [12:0]     */ .top_level_DRAM_ADDR_i(top_level_DRAM_ADDR_s),
    /*input   [15:0]     */ .top_level_DRAM_DATA_i(top_level_DRAM_DATA_s),
    /*input   [1:0]      */ .top_level_DRAM_BANK_ADDR_i(top_level_DRAM_BANK_ADDR_s),
    /*input   [1:0]      */ .top_level_DRAM_DQM_i(top_level_DRAM_DQM_s),
    /*input              */ .top_level_DRAM_RAS_N_i(top_level_DRAM_RAS_N_s),
    /*input              */ .top_level_DRAM_CAS_N_i(top_level_DRAM_CAS_N_s),
    /*input              */ .top_level_DRAM_CLK_EN_i(top_level_DRAM_CLK_EN_s),
    /*input              */ .top_level_DRAM_CLK_i(top_level_DRAM_CLK_s),
    /*input              */ .top_level_DRAM_WR_EN_i(top_level_DRAM_WR_EN_s),
    /*input              */ .top_level_DRAM_CS_N_i(top_level_DRAM_CS_N_s),
    /*input              */ .top_level_EEPROM_SCLK_i(top_level_EEPROM_SCLK_s),
    /*input              */ .top_level_EEPROM_SDAT(),
    /*input              */ .top_level_G_SENSOR_INT(),
    /*input              */ .top_level_G_SENSOR_CS_i(top_level_G_SENSOR_CS_s),
    /*input              */ .top_level_ADC_CS_N_i(top_level_ADC_CS_N_s),
    /*input              */ .top_level_ADC_SADDR_i(top_level_ADC_SADDR_s),
    /*input              */ .top_level_ADC_SDAT(),
    /*input              */ .top_level_ADC_SCLK_i(top_level_ADC_SCLK_s),
    /*input              */ .top_level_JP1_1(),
    /*input              */ .top_level_JP1_2_i(top_level_JP1_2_s),
    /*input              */ .top_level_JP1_3(),
    /*input              */ .top_level_JP1_4_i(top_level_JP1_4_s),
    /*input              */ .top_level_JP1_5_i(top_level_JP1_5_s),
    /*input              */ .top_level_JP1_6_i(top_level_JP1_6_s),
    /*input              */ .top_level_JP1_7_i(top_level_JP1_7_s),
    /*input              */ .top_level_JP1_8_i(top_level_JP1_8_s),
    /*input              */ .top_level_JP1_9_i(top_level_JP1_9_s),
    /*input              */ .top_level_JP1_10_i(top_level_JP1_10_s),
    /*input              */ .top_level_JP1_13_i(top_level_JP1_13_s),
    /*input              */ .top_level_JP1_14_i(top_level_JP1_14_s),
    /*input              */ .top_level_JP1_15_i(top_level_JP1_15_s),
    /*input              */ .top_level_JP1_16_i(top_level_JP1_16_s),
    /*input              */ .top_level_JP1_17_i(top_level_JP1_17_s),
    /*input              */ .top_level_JP1_18_i(top_level_JP1_18_s),
    /*input              */ .top_level_JP1_19_i(top_level_JP1_19_s),
    /*input              */ .top_level_JP1_20_i(top_level_JP1_20_s),
    /*input              */ .top_level_JP1_21_i(top_level_JP1_21_s),
    /*input              */ .top_level_JP1_22_i(top_level_JP1_22_s),
    /*input              */ .top_level_JP1_23_i(top_level_JP1_23_s),
    /*input              */ .top_level_JP1_24_i(top_level_JP1_24_s),
    /*input              */ .top_level_JP1_25_i(top_level_JP1_25_s),
    /*input              */ .top_level_JP1_26_i(top_level_JP1_26_s),
    /*input              */ .top_level_JP1_27_i(top_level_JP1_27_s),
    /*input              */ .top_level_JP1_28_i(top_level_JP1_28_s),
    /*input              */ .top_level_JP1_31_i(top_level_JP1_31_s),
    /*input              */ .top_level_JP1_32_i(top_level_JP1_32_s),
    /*input              */ .top_level_JP1_33_i(top_level_JP1_33_s),
    /*input              */ .top_level_JP1_34_i(top_level_JP1_34_s),
    /*input              */ .top_level_JP1_35_i(top_level_JP1_35_s),
    /*input              */ .top_level_JP1_36_i(top_level_JP1_36_s),
    /*input              */ .top_level_JP1_37_i(top_level_JP1_37_s),
    /*input              */ .top_level_JP1_38_i(top_level_JP1_38_s),
    /*input              */ .top_level_JP1_39_i(top_level_JP1_39_s),
    /*input              */ .top_level_JP1_40_i(top_level_JP1_40_s),
    /*input              */ .top_level_JP2_1(),
    /*input              */ .top_level_JP2_2_i(top_level_JP2_2_s),
    /*input              */ .top_level_JP2_3(),
    /*input              */ .top_level_JP2_4_i(top_level_JP2_4_s),
    /*input              */ .top_level_JP2_5_i(top_level_JP2_5_s),
    /*input              */ .top_level_JP2_6_i(top_level_JP2_6_s),
    /*input              */ .top_level_JP2_7_i(top_level_JP2_7_s),
    /*input              */ .top_level_JP2_8_i(top_level_JP2_8_s),
    /*input              */ .top_level_JP2_9_i(top_level_JP2_9_s),
    /*input              */ .top_level_JP2_10_i(top_level_JP2_10_s),
    /*input              */ .top_level_JP2_13_i(top_level_JP2_13_s),
    /*input              */ .top_level_JP2_14_i(top_level_JP2_14_s),
    /*input              */ .top_level_JP2_15_i(top_level_JP2_15_s),
    /*input              */ .top_level_JP2_16_i(top_level_JP2_16_s),
    /*input              */ .top_level_JP2_17_i(top_level_JP2_17_s),
    /*input              */ .top_level_JP2_18_i(top_level_JP2_18_s),
    /*input              */ .top_level_JP2_19_i(top_level_JP2_19_s),
    /*input              */ .top_level_JP2_20_i(top_level_JP2_20_s),
    /*input              */ .top_level_JP2_21_i(top_level_JP2_21_s),
    /*input              */ .top_level_JP2_22_i(top_level_JP2_22_s),
    /*input              */ .top_level_JP2_23_i(top_level_JP2_23_s),
    /*input              */ .top_level_JP2_24_i(top_level_JP2_24_s),
    /*input              */ .top_level_JP2_25_i(top_level_JP2_25_s),
    /*input              */ .top_level_JP2_26_i(top_level_JP2_26_s),
    /*input              */ .top_level_JP2_27_i(top_level_JP2_27_s),
    /*input              */ .top_level_JP2_28_i(top_level_JP2_28_s),
    /*input              */ .top_level_JP2_31_i(top_level_JP2_31_s),
    /*input              */ .top_level_JP2_32_i(top_level_JP2_32_s),
    /*input              */ .top_level_JP2_33_i(top_level_JP2_33_s),
    /*input              */ .top_level_JP2_34_i(top_level_JP2_34_s),
    /*input              */ .top_level_JP2_35_i(top_level_JP2_35_s),
    /*input              */ .top_level_JP2_36_i(top_level_JP2_36_s),
    /*input              */ .top_level_JP2_37_i(top_level_JP2_37_s),
    /*input              */ .top_level_JP2_38_i(top_level_JP2_38_s),
    /*input              */ .top_level_JP2_39_i(top_level_JP2_39_s),
    /*input              */ .top_level_JP2_40_i(top_level_JP2_40_s),
    /*input              */ .top_level_JP3_2(),
    /*input              */ .top_level_JP3_3(),
    /*input              */ .top_level_JP3_4(),
    /*input              */ .top_level_JP3_5_i(top_level_JP3_5_s),
    /*input              */ .top_level_JP3_6_i(top_level_JP3_6_s),
    /*input              */ .top_level_JP3_7_i(top_level_JP3_7_s),
    /*input              */ .top_level_JP3_8_i(top_level_JP3_8_s),
    /*input              */ .top_level_JP3_9_i(top_level_JP3_9_s),
    /*input              */ .top_level_JP3_10_i(top_level_JP3_10_s),
    /*input              */ .top_level_JP3_11_i(top_level_JP3_11_s),
    /*input              */ .top_level_JP3_12_i(top_level_JP3_12_s),
    /*input              */ .top_level_JP3_13_i(top_level_JP3_13_s),
    /*input              */ .top_level_JP3_15_i(top_level_JP3_15_s),
    /*input              */ .top_level_JP3_16_i(top_level_JP3_16_s),
    /*input              */ .top_level_JP3_17_i(top_level_JP3_17_s),
    /*input  reg [7:0]   */ .top_level_LED_i(top_level_LED_s),
    /*input              */ .Stimulus_CLK50MHZ_o_i(Stimulus_CLK50MHZ_o_s),
    /*input   [1:0]      */ .Stimulus_KEY_o_i(Stimulus_KEY_o_s),
    /*input   [3:0]      */ .Stimulus_SWITCH_o_i(Stimulus_SWITCH_o_s),
    /*input   [12:0]     */ .Stimulus_DRAM_ADDR_i(top_level_DRAM_ADDR_s),
    /*input   [15:0]     */ .Stimulus_DRAM_DATA_i(top_level_DRAM_DATA_s),
    /*input   [1:0]      */ .Stimulus_DRAM_BANK_ADDR_i(top_level_DRAM_BANK_ADDR_s),
    /*input   [1:0]      */ .Stimulus_DRAM_DQM_i(top_level_DRAM_DQM_s),
    /*input              */ .Stimulus_DRAM_RAS_N_i(top_level_DRAM_RAS_N_s),
    /*input              */ .Stimulus_DRAM_CAS_N_i(top_level_DRAM_CAS_N_s),
    /*input              */ .Stimulus_DRAM_CLK_EN_i(top_level_DRAM_CLK_EN_s),
    /*input              */ .Stimulus_DRAM_CLK_i(top_level_DRAM_CLK_s),
    /*input              */ .Stimulus_DRAM_WR_EN_i(top_level_DRAM_WR_EN_s),
    /*input              */ .Stimulus_DRAM_CS_N_i(top_level_DRAM_CS_N_s),
    /*input              */ .Stimulus_EEPROM_SCLK_i(top_level_EEPROM_SCLK_s),
    /*input              */ .Stimulus_EEPROM_SDAT_o_i(Stimulus_EEPROM_SDAT_o_s),
    /*input              */ .Stimulus_G_SENSOR_INT_o_i(Stimulus_G_SENSOR_INT_o_s),
    /*input              */ .Stimulus_G_SENSOR_CS_i(top_level_G_SENSOR_CS_s),
    /*input              */ .Stimulus_ADC_CS_N_i(top_level_ADC_CS_N_s),
    /*input              */ .Stimulus_ADC_SADDR_i(top_level_ADC_SADDR_s),
    /*input              */ .Stimulus_ADC_SDAT_o_i(Stimulus_ADC_SDAT_o_s),
    /*input              */ .Stimulus_ADC_SCLK_i(top_level_ADC_SCLK_s),
    /*input              */ .Stimulus_JP1_1_o_i(Stimulus_JP1_1_o_s),
    /*input              */ .Stimulus_JP1_2_i(top_level_JP1_2_s),
    /*input              */ .Stimulus_JP1_3_o_i(Stimulus_JP1_3_o_s),
    /*input              */ .Stimulus_JP1_4_i(top_level_JP1_4_s),
    /*input              */ .Stimulus_JP1_5_i(top_level_JP1_5_s),
    /*input              */ .Stimulus_JP1_6_i(top_level_JP1_6_s),
    /*input              */ .Stimulus_JP1_7_i(top_level_JP1_7_s),
    /*input              */ .Stimulus_JP1_8_i(top_level_JP1_8_s),
    /*input              */ .Stimulus_JP1_9_i(top_level_JP1_9_s),
    /*input              */ .Stimulus_JP1_10_i(top_level_JP1_10_s),
    /*input              */ .Stimulus_JP1_13_i(top_level_JP1_13_s),
    /*input              */ .Stimulus_JP1_14_i(top_level_JP1_14_s),
    /*input              */ .Stimulus_JP1_15_i(top_level_JP1_15_s),
    /*input              */ .Stimulus_JP1_16_i(top_level_JP1_16_s),
    /*input              */ .Stimulus_JP1_17_i(top_level_JP1_17_s),
    /*input              */ .Stimulus_JP1_18_i(top_level_JP1_18_s),
    /*input              */ .Stimulus_JP1_19_i(top_level_JP1_19_s),
    /*input              */ .Stimulus_JP1_20_i(top_level_JP1_20_s),
    /*input              */ .Stimulus_JP1_21_i(top_level_JP1_21_s),
    /*input              */ .Stimulus_JP1_22_i(top_level_JP1_22_s),
    /*input              */ .Stimulus_JP1_23_i(top_level_JP1_23_s),
    /*input              */ .Stimulus_JP1_24_i(top_level_JP1_24_s),
    /*input              */ .Stimulus_JP1_25_i(top_level_JP1_25_s),
    /*input              */ .Stimulus_JP1_26_i(top_level_JP1_26_s),
    /*input              */ .Stimulus_JP1_27_i(top_level_JP1_27_s),
    /*input              */ .Stimulus_JP1_28_i(top_level_JP1_28_s),
    /*input              */ .Stimulus_JP1_31_i(top_level_JP1_31_s),
    /*input              */ .Stimulus_JP1_32_i(top_level_JP1_32_s),
    /*input              */ .Stimulus_JP1_33_i(top_level_JP1_33_s),
    /*input              */ .Stimulus_JP1_34_i(top_level_JP1_34_s),
    /*input              */ .Stimulus_JP1_35_i(top_level_JP1_35_s),
    /*input              */ .Stimulus_JP1_36_i(top_level_JP1_36_s),
    /*input              */ .Stimulus_JP1_37_i(top_level_JP1_37_s),
    /*input              */ .Stimulus_JP1_38_i(top_level_JP1_38_s),
    /*input              */ .Stimulus_JP1_39_i(top_level_JP1_39_s),
    /*input              */ .Stimulus_JP1_40_i(top_level_JP1_40_s),
    /*input              */ .Stimulus_JP2_1_o_i(Stimulus_JP2_1_o_s),
    /*input              */ .Stimulus_JP2_2_i(top_level_JP2_2_s),
    /*input              */ .Stimulus_JP2_3_o_i(Stimulus_JP2_3_o_s),
    /*input              */ .Stimulus_JP2_4_i(top_level_JP2_4_s),
    /*input              */ .Stimulus_JP2_5_i(top_level_JP2_5_s),
    /*input              */ .Stimulus_JP2_6_i(top_level_JP2_6_s),
    /*input              */ .Stimulus_JP2_7_i(top_level_JP2_7_s),
    /*input              */ .Stimulus_JP2_8_i(top_level_JP2_8_s),
    /*input              */ .Stimulus_JP2_9_i(top_level_JP2_9_s),
    /*input              */ .Stimulus_JP2_10_i(top_level_JP2_10_s),
    /*input              */ .Stimulus_JP2_13_i(top_level_JP2_13_s),
    /*input              */ .Stimulus_JP2_14_i(top_level_JP2_14_s),
    /*input              */ .Stimulus_JP2_15_i(top_level_JP2_15_s),
    /*input              */ .Stimulus_JP2_16_i(top_level_JP2_16_s),
    /*input              */ .Stimulus_JP2_17_i(top_level_JP2_17_s),
    /*input              */ .Stimulus_JP2_18_i(top_level_JP2_18_s),
    /*input              */ .Stimulus_JP2_19_i(top_level_JP2_19_s),
    /*input              */ .Stimulus_JP2_20_i(top_level_JP2_20_s),
    /*input              */ .Stimulus_JP2_21_i(top_level_JP2_21_s),
    /*input              */ .Stimulus_JP2_22_i(top_level_JP2_22_s),
    /*input              */ .Stimulus_JP2_23_i(top_level_JP2_23_s),
    /*input              */ .Stimulus_JP2_24_i(top_level_JP2_24_s),
    /*input              */ .Stimulus_JP2_25_i(top_level_JP2_25_s),
    /*input              */ .Stimulus_JP2_26_i(top_level_JP2_26_s),
    /*input              */ .Stimulus_JP2_27_i(top_level_JP2_27_s),
    /*input              */ .Stimulus_JP2_28_i(top_level_JP2_28_s),
    /*input              */ .Stimulus_JP2_31_i(top_level_JP2_31_s),
    /*input              */ .Stimulus_JP2_32_i(top_level_JP2_32_s),
    /*input              */ .Stimulus_JP2_33_i(top_level_JP2_33_s),
    /*input              */ .Stimulus_JP2_34_i(top_level_JP2_34_s),
    /*input              */ .Stimulus_JP2_35_i(top_level_JP2_35_s),
    /*input              */ .Stimulus_JP2_36_i(top_level_JP2_36_s),
    /*input              */ .Stimulus_JP2_37_i(top_level_JP2_37_s),
    /*input              */ .Stimulus_JP2_38_i(top_level_JP2_38_s),
    /*input              */ .Stimulus_JP2_39_i(top_level_JP2_39_s),
    /*input              */ .Stimulus_JP2_40_i(top_level_JP2_40_s),
    /*input              */ .Stimulus_JP3_2_o_i(Stimulus_JP3_2_o_s),
    /*input              */ .Stimulus_JP3_3_o_i(Stimulus_JP3_3_o_s),
    /*input              */ .Stimulus_JP3_4_o_i(Stimulus_JP3_4_o_s),
    /*input              */ .Stimulus_JP3_5_i(top_level_JP3_5_s),
    /*input              */ .Stimulus_JP3_6_i(top_level_JP3_6_s),
    /*input              */ .Stimulus_JP3_7_i(top_level_JP3_7_s),
    /*input              */ .Stimulus_JP3_8_i(top_level_JP3_8_s),
    /*input              */ .Stimulus_JP3_9_i(top_level_JP3_9_s),
    /*input              */ .Stimulus_JP3_10_i(top_level_JP3_10_s),
    /*input              */ .Stimulus_JP3_11_i(top_level_JP3_11_s),
    /*input              */ .Stimulus_JP3_12_i(top_level_JP3_12_s),
    /*input              */ .Stimulus_JP3_13_i(top_level_JP3_13_s),
    /*input              */ .Stimulus_JP3_15_i(top_level_JP3_15_s),
    /*input              */ .Stimulus_JP3_16_i(top_level_JP3_16_s),
    /*input              */ .Stimulus_JP3_17_i(top_level_JP3_17_s),
    /*input  reg [7:0]   */ .Stimulus_LED_i(top_level_LED_s)

);





endmodule
