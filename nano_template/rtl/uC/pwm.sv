module pwm #(parameter DIV_WIDTH=16, parameter PWM_BITS=8)(
    input                 clk,
    input                 reset,
    input                 enable,
    input [DIV_WIDTH-1:0] div,
    input [PWM_BITS-1:0]  compare,
    output                pwm_o
);

reg [PWM_BITS-1:0]  count;
reg [DIV_WIDTH-1:0] freq_count;

assign pwm_o = enable & (compare >= count);

always_ff @(posedge clk) begin
    if (reset) begin
        count <= 0;
        freq_count <= 0;
    end
    else if(enable) begin
        if(freq_count >= div) begin
            count <= count + 1;
            freq_count <= 0;
        end
        else freq_count <= freq_count + 1;
    end
    else begin
        freq_count <= freq_count;
        count      <= count;
    end
end

endmodule
