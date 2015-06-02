module top_level 
(
    input         CLK50MHZ,//do not rename
    input  [1:0]  KEY,
    input  [3:0]  SWITCH,
    /*      DRAM SIGNALS    */
    output [12:0] DRAM_ADDR,
    output [15:0] DRAM_DATA,
    output [1:0]  DRAM_BANK_ADDR,
    output [1:0]  DRAM_DQM, //data byte mask
    output        DRAM_RAS_N,
    output        DRAM_CAS_N,
    output        DRAM_CLK_EN,
    output        DRAM_CLK,
    output        DRAM_WR_EN,
    output        DRAM_CS_N,

    /* EEPROM/GSENSOR SIGNALS    */
    output        EEPROM_SCLK,
    input         EEPROM_SDAT,
    input         G_SENSOR_INT,
    output        G_SENSOR_CS,

    /*        ADC SIGNALS        */
    output        ADC_CS_N,
    output        ADC_SADDR,
    input         ADC_SDAT,
    output        ADC_SCLK,

    /*        GPIO SIGNALS        */
    inout         GPIO_0_33,
    inout         GPIO_0_32,
    inout         GPIO_0_31,
    inout         GPIO_0_30,
    inout         GPIO_0_29,
    inout         GPIO_0_28,
    inout         GPIO_0_27,
    inout         GPIO_0_26,
    inout         GPIO_0_25,
    inout         GPIO_0_24,
    inout         GPIO_0_23,
    inout         GPIO_0_22,
    inout         GPIO_0_21,
    inout         GPIO_0_20,
    inout         GPIO_0_19,
    inout         GPIO_0_18,
    inout         GPIO_0_17,
    inout         GPIO_0_16,
    inout         GPIO_0_15,
    inout         GPIO_0_14,
    inout         GPIO_0_13,
    inout         GPIO_0_12,
    inout         GPIO_0_11,
    inout         GPIO_0_10,
    inout         GPIO_0_9,
    inout         GPIO_0_8,
    inout         GPIO_0_7,
    inout         GPIO_0_6,
    inout         GPIO_0_5,
    inout         GPIO_0_4,
    inout         GPIO_0_3,
    inout         GPIO_0_2,
    inout         GPIO_0_1,
    inout         GPIO_0_0,
    input  [1:0]  GPIO_0_IN,

    inout         GPIO_1_33,
    inout         GPIO_1_32,
    inout         GPIO_1_31,
    inout         GPIO_1_30,
    inout         GPIO_1_29,
    inout         GPIO_1_28,
    inout         GPIO_1_27,
    inout         GPIO_1_26,
    inout         GPIO_1_25,
    inout         GPIO_1_24,
    inout         GPIO_1_23,
    inout         GPIO_1_22,
    inout         GPIO_1_21,
    inout         GPIO_1_20,
    inout         GPIO_1_19,
    inout         GPIO_1_18,
    inout         GPIO_1_17,
    inout         GPIO_1_16,
    inout         GPIO_1_15,
    inout         GPIO_1_14,
    inout         GPIO_1_13,
    inout         GPIO_1_12,
    inout         GPIO_1_11,
    inout         GPIO_1_10,
    inout         GPIO_1_9,
    inout         GPIO_1_8,
    inout         GPIO_1_7,
    inout         GPIO_1_6,
    inout         GPIO_1_5,
    inout         GPIO_1_4,
    inout         GPIO_1_3,
    inout         GPIO_1_2,
    inout         GPIO_1_1,
    inout         GPIO_1_0,
    input  [1:0]  GPIO_1_IN,

    inout         GPIO_2_12,
    inout         GPIO_2_11,
    inout         GPIO_2_10,
//    inout         GPIO_2_9, //bug?
    inout         GPIO_2_8,
    inout         GPIO_2_7,
    inout         GPIO_2_6,
    inout         GPIO_2_5,
    inout         GPIO_2_4,
    inout         GPIO_2_3,
    inout         GPIO_2_2,
    inout         GPIO_2_1,
    inout         GPIO_2_0,
    input  [1:0]  GPIO_2_IN,

    output reg [7:0]  LED
);

reg [31:0] counter_r;

always @(posedge CLK50MHZ) begin
	if (~KEY[0]) begin
		LED <= 0;
		counter_r <= 0;
	end
	else begin
		if(counter_r > 250) begin
			LED <= LED + 1;
			counter_r <= 0;
		end
		else
			counter_r <= counter_r +1;
	end
end



endmodule
