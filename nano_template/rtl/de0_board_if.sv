`timescale 10ns / 10ps


interface dram_if(
    output [12:0] DRAM_ADDR,
    inout  [15:0] DRAM_DATA,
    output [1:0]  DRAM_BANK_ADDR,
    output [1:0]  DRAM_DQM, //data byte mask
    output        DRAM_RAS_N,
    output        DRAM_CAS_N,
    output        DRAM_CLK_EN,
    output        DRAM_CLK,
    output        DRAM_WR_EN,
    output        DRAM_CS_N,
    input         clk
);


logic [15:0] data_i, data_o;
logic wr_en_o;
logic [14:0] addr_o;

assign DRAM_DATA = wr_en_o ? data_o : 'Z;
assign DRAM_WR_EN = wr_en_o;


always_ff @(posedge clk) begin
    if(!wr_en_o) data_i <= DRAM_DATA;
    else         data_i <= data_i;
end

    modport master (output data_o, input data_i, output wr_en_o, output addr_o);

endinterface
