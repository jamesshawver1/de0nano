`timescale 10ns / 10ps

import uart_pkg::*;

module uart_tx #(SAMPLE_WIDTH=32)
(
    input            reset,
    input            clk,
    input  [3:0]     data_width,
    input  [1:0]     stop_bits,
    input            enable,
    input parity_t   parity,
    input  [7:0]     data,
    input            empty,
    input   [SAMPLE_WIDTH-1:0] samples_per_bit,
    output reg       tx_out
);
    logic read;
    reg     [SAMPLE_WIDTH-1:0] samples_count_r;
    reg [3:0]        bit_count;
    reg              sample_point;
    reg [7:0] data_r;
    
    typedef enum logic [3:0] {
        IDLE,
        START,
        DATA,
        PARITY,
        STOP,
        OH_SHIT
    } state_t;
    state_t state,next;

    assign state_o = state;

    //sampling logic
    always_ff @(posedge clk or posedge reset) begin
        if(reset) begin
            sample_point        <= '0;
            samples_count_r     <= '0;
        end
        else begin
            if(state == IDLE) begin
                sample_point    <= '0;
                samples_count_r <= samples_per_bit;
            end
            else if (~(|samples_count_r)) begin
                samples_count_r <= samples_per_bit;
                sample_point    <= '1;
            end
            else begin
                samples_count_r <= samples_count_r - 1; //count
                sample_point    <= '0;
            end
        end
    end

    //next state logic
    always_comb begin
        if (reset) next = IDLE;
        else begin
            case (state)
                IDLE:  if(!empty)                    next = START;
                       else                          next = IDLE;
                START: if(sample_point)              next = DATA;
                       else                          next = START;
                DATA: begin
                    if (~(|bit_count)) begin
                        if(parity == NO_PARITY)      next = STOP;
                        else                         next = PARITY;
                    end
                    else                             next=DATA;
                end
                PARITY:  if(sample_point)            next=STOP;
                         else                        next=PARITY;
                STOP:    if(~(|bit_count))           next=IDLE;
                         else                        next=STOP;
                default: next=OH_SHIT;
            endcase
        end
    end

    //state update
    always_ff @(posedge clk  or posedge reset) begin
        if (reset) begin
            state <= IDLE;
        end
        else begin
            state <= next;
        end
    end

    //registers
    always_ff @(posedge clk) begin
        case (state)
            IDLE:  begin
                tx_out <= 1'b1;
                read <= 1'b0;
            end
            START: begin
                tx_out <= 1'b0;
                data_r <= data;
                bit_count <= data_width;
            end
            DATA: begin
                tx_out <=data_r[0];
                if(next == STOP) bit_count <= stop_bits;
                else if(sample_point) begin
                    if((|bit_count)) begin
                        bit_count <= bit_count -1;
                        data_r<={1'b1,data_r[7:1]}; //shifting the data along LSB comes in first
                    end
                    else begin
                        bit_count <= bit_count;
                        data_r<=data_r; //shifting the data along
                    end
                end
                else begin
                    bit_count <= bit_count;
                    data_r<=data_r; //shifting the data along
                end
            end
            PARITY: begin bit_count <= stop_bits;
                if(parity==EVEN_PARITY) tx_out <=  (^data);
                else                    tx_out <= ~(^data);
            end
            STOP: begin
                tx_out <= 1'b1;
                if(next==IDLE) read <= 1'b1;
                else if(sample_point) begin
                    if((|bit_count)) begin
                        bit_count <= bit_count -1;
                    end
                    else begin
                        bit_count <= bit_count;
                    end
                end
                else begin
                    bit_count <= bit_count;
                end
            end
            OH_SHIT: tx_out <= 1'b0;
            default: tx_out <= 1'b0;
        endcase
    end
endmodule



