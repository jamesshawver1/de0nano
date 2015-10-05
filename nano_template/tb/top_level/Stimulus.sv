`timescale 10ns / 10ps
//each bit needs to be every 8.68055us

module Stimulus
( 
    output reg       CLK50MHZ_o ,
    output reg [1:0] KEY_o ,
    output reg [3:0] SWITCH_o ,
    input  [12:0] DRAM_ADDR_i , input  [15:0] DRAM_DATA_i , input  [1:0] DRAM_BANK_ADDR_i , input  [1:0] DRAM_DQM_i ,
    input   DRAM_RAS_N_i , input   DRAM_CAS_N_i , input   DRAM_CLK_EN_i , input   DRAM_CLK_i , input   DRAM_WR_EN_i ,
    input   DRAM_CS_N_i ,
    input   EEPROM_SCLK_i , output   EEPROM_SDAT_o ,
    output   G_SENSOR_INT_o , input   G_SENSOR_CS_i ,
    input   ADC_CS_N_i , input   ADC_SADDR_i , output   ADC_SDAT_o , input   ADC_SCLK_i ,
    output reg JP1_1_o ,
    input   JP1_2_i , output   JP1_3_o , input   JP1_4_i , input   JP1_5_i , input   JP1_6_i , input   JP1_7_i ,
    input   JP1_8_i , input   JP1_9_i , input   JP1_10_i , input   JP1_13_i , input   JP1_14_i , input   JP1_15_i ,
    input   JP1_16_i , input   JP1_17_i , input   JP1_18_i , input   JP1_19_i , input   JP1_20_i , input   JP1_21_i ,
    input   JP1_22_i , input   JP1_23_i , input   JP1_24_i , input   JP1_25_i , input   JP1_26_i , input   JP1_27_i ,
    input   JP1_28_i , input   JP1_31_i , input   JP1_32_i , input   JP1_33_i , input   JP1_34_i , input   JP1_35_i ,
    input   JP1_36_i , input   JP1_37_i , input   JP1_38_i , input   JP1_39_i , input   JP1_40_i , output   JP2_1_o ,
    input   JP2_2_i , output   JP2_3_o , input   JP2_4_i , input   JP2_5_i , input   JP2_6_i , input   JP2_7_i ,
    input   JP2_8_i , input   JP2_9_i , input   JP2_10_i , input   JP2_13_i , input   JP2_14_i , input   JP2_15_i ,
    input   JP2_16_i , input   JP2_17_i , input   JP2_18_i , input   JP2_19_i , input   JP2_20_i , input   JP2_21_i ,
    input   JP2_22_i , input   JP2_23_i , input   JP2_24_i , input   JP2_25_i , input   JP2_26_i , input   JP2_27_i ,
    input   JP2_28_i , input   JP2_31_i , input   JP2_32_i , input   JP2_33_i , input   JP2_34_i , input   JP2_35_i ,
    input   JP2_36_i , input   JP2_37_i , input   JP2_38_i , input   JP2_39_i , input   JP2_40_i , output   JP3_2_o ,
    output   JP3_3_o , output   JP3_4_o , input   JP3_5_i , input   JP3_6_i , input   JP3_7_i , input   JP3_8_i ,
    input   JP3_9_i , input   JP3_10_i , input   JP3_11_i , input   JP3_12_i , input   JP3_13_i , input   JP3_15_i ,
    input   JP3_16_i , input   JP3_17_i , input reg [7:0] LED_i 

);

initial begin
    CLK50MHZ_o='1;
    KEY_o='0;
    SWITCH_o='1;
    JP1_1_o='1;
    #4;
    KEY_o='1;
    #20;
    JP1_1_o='0; //start of UART
    #868 JP1_1_o='1; //data 0
    #868 JP1_1_o='0; //data 1
    #868 JP1_1_o='1; //data 2
    #868 JP1_1_o='0; //data 3
    #868 JP1_1_o='1; //data 4
    #868 JP1_1_o='0; //data 5
    #868 JP1_1_o='1; //data 6
    #868 JP1_1_o='0; //data 7
    #868 JP1_1_o='1; //stop bit
    #868 JP1_1_o='1; //stop bit


    #100;
    $finish;
end

always begin
    #1 CLK50MHZ_o=~CLK50MHZ_o;
end



endmodule
