// synthesis VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
`define CLK_SPEED 50000000

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

    output reg [7:0]  LED
);

reg [31:0] counter_r;
reg [31:0] counter1_r;
assign reset = ~KEY[0];

always @(posedge CLK50MHZ) begin
	if (reset) begin
		LED <= '1;
		counter_r <= 0;
	end
	else begin
		if(counter_r > `CLK_SPEED) begin
			LED <= LED + 1;
			counter_r <= 0;
		end
		else
			counter_r <= counter_r +1;
	end
end



endmodule
