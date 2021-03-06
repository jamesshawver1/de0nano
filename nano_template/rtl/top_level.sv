// synthesis VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
`timescale 10ns/10ps

`define CLK_SPEED 50000000

import uart_pkg::*;

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

    /* EEPROM/GSENSOR SIGNALS  */
    output        EEPROM_SCLK,
    input         EEPROM_SDAT,
    input         G_SENSOR_INT,
    output        G_SENSOR_CS,

    /*        ADC SIGNALS     */
    output        ADC_CS_N, //LOW ACTIVE!
    output        ADC_SADDR,
    input         ADC_SDAT,
    output        ADC_SCLK,

    /*       GPIO Signals by pin Position  */
    input         JP1_1, //must be input
    output        JP1_2,
    input         JP1_3, //must be input
    output        JP1_4,
    output        JP1_5,
    output        JP1_6,
    output        JP1_7,
    output        JP1_8,
    output        JP1_9,
    output        JP1_10,
    //output      JP1_11, //VCC_5V
    //output      JP1_12, //GND
    output        JP1_13,
    output        JP1_14,
    output        JP1_15,
    output        JP1_16,
    output        JP1_17,
    output        JP1_18,
    output        JP1_19,
    output        JP1_20,
    output        JP1_21,
    output        JP1_22,
    output        JP1_23,
    output        JP1_24,
    output        JP1_25,
    output        JP1_26,
    output        JP1_27,
    output        JP1_28,
    //output      JP1_29, //VCC_3v3
    //output      JP1_30, //GND
    output        JP1_31,
    output        JP1_32,
    output        JP1_33,
    output        JP1_34,
    output        JP1_35,
    output        JP1_36,
    output        JP1_37,
    output        JP1_38,
    output        JP1_39,
    output        JP1_40,

    /*       GPIO Signals by pin Position */
    input         JP2_1, //must be input
    output        JP2_2,
    input         JP2_3, //must be input
    output        JP2_4,
    output        JP2_5,
    output        JP2_6,
    output        JP2_7,
    output        JP2_8,
    output        JP2_9,
    output        JP2_10,
    //output      JP2_11, //VCC_5V
    //output      JP2_12, //GND
    output        JP2_13,
    output        JP2_14,
    output        JP2_15,
    output        JP2_16,
    output        JP2_17,
    output        JP2_18,
    output        JP2_19,
    output        JP2_20,
    output        JP2_21,
    output        JP2_22,
    output        JP2_23,
    output        JP2_24,
    output        JP2_25,
    output        JP2_26,
    output        JP2_27,
    output        JP2_28,
    //output      JP2_29, //VCC_3v3
    //output      JP2_30, //GND
    output        JP2_31,
    output        JP2_32,
    output        JP2_33,
    output        JP2_34,
    output        JP2_35,
    output        JP2_36,
    output        JP2_37,
    output        JP2_38,
    output        JP2_39,
    output        JP2_40,

    /*       GPIO Signals by pin Position */
    //input         JP3_1, //VCC 3v3
    input         JP3_2, //must be input
    input         JP3_3, //must be input
    input         JP3_4, //must be input
    output        JP3_5,
    output        JP3_6,
    output        JP3_7,
    output        JP3_8,
    output        JP3_9,
    output        JP3_10,
    output        JP3_11,
    output        JP3_12,
    output        JP3_13,
    output        JP3_15,
    output        JP3_16,
    output        JP3_17,

    output reg [7:0]  LED
);

reg [7:0]  LED_s;
wire reset_s;
wire aHz_s;
assign reset_s = ~KEY[0];

dynamic_clk_div #(
                    .COUNTER_WIDTH(32)
        )
aHz_inst (
    .clk(CLK50MHZ),
    .div(`CLK_SPEED>>SWITCH),
    .reset(reset_s),
    .enable_o(aHz_s)
);

genvar c;
generate
    for (c = 0; c < 8; c = c + 1) begin : gen
        if( c<3 )
            pwm #(
                .DIV_WIDTH(8), 
                .PWM_BITS(8)
                )
            pwm_inst (
                .clk(CLK50MHZ),
                .reset(reset_s),
                .enable(LED_s[c]),
                .div(8'd100),
                .compare(8'hff),
                .pwm_o(LED[c])
            );
        else
            pwm #(
                .DIV_WIDTH(8), 
                .PWM_BITS(8)
                )
            pwm_inst (
                .clk(CLK50MHZ),
                .reset(reset_s),
                .enable(LED_s[c]),
                .div(8'd100),
                .compare(8'hff),
                .pwm_o(LED[c])
            );
    end
endgenerate

wire [3:0] state_s;
wire [7:0] data_s;
wire rx_valid_s;

uart_rx #(.SAMPLE_WIDTH(32))
rx_uart 
(
    .reset(reset_s),
    .clk(CLK50MHZ),
    .write(rx_valid_s),
    .enable('1),
    .samples_per_bit(32'd434),
    .data_width(4'd8),
    .data(data_s),
    .stop_bits(2'b1),
    .parity(NO_PARITY),
    .rx_in(JP1_1)
);

uart_tx #(.SAMPLE_WIDTH(32))
tx_uart 
(
    .empty(~rx_valid_s),
    .reset(reset_s),
    .clk(CLK50MHZ),
    .enable('1),
    .samples_per_bit(32'd434),
    .data_width(4'd8),
    .data(data_s),
    .stop_bits(2'b1),
    .parity(NO_PARITY),
    .tx_out(JP1_2)
);

always_comb begin
    if (reset_s) LED_s <= '0;
    else LED_s <= data_s;
end

endmodule
