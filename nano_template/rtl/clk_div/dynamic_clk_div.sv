module dynamic_clk_div #(parameter COUNTER_WIDTH=32) (
    input                     clk,
    input [COUNTER_WIDTH-1:0] div,
    input                     reset,
    output                    enable_o
);

reg [COUNTER_WIDTH-1:0] counter_r;

assign enable_o = ~(|counter_r); //when counter = 0, enable

always @(posedge clk) begin
	if (reset) begin
		counter_r <= '1;
	end
	else begin
		if(counter_r > div) begin
			counter_r <= 0;
		end
		else counter_r <= counter_r +1;
	end
end

endmodule
