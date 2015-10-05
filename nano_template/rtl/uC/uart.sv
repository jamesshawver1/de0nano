`timescale 10ns / 10ps



`ifndef uart_pkg
`define uart_pkg

package uart_pkg;
    typedef enum logic [1:0] {
        NO_PARITY,
        ODD_PARITY,
        EVEN_PARITY
    } parity_t;
endpackage

import uart_pkg::*;

interface rx_uart_if #(SAMPLE_WIDTH=32)
(
    input            reset,
    input            clk,
    output [3:0]     state_o,
    input  [3:0]     data_width,
    input  [1:0]     stop_bits,
    input            enable,
    input parity_t   parity,
    output reg [7:0] data,
    input   [SAMPLE_WIDTH-1:0] samples_per_bit,
    input            rx_in
);
    logic read;
    reg     [SAMPLE_WIDTH-1:0] samples_count_r;
    logic            empty;
    reg [3:0]        bit_count;
    reg              sample_point;
    reg              rx_r,rx_r2;//making sure there isn't any metastability
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
            rx_r                <='0;
            rx_r2               <='0;
            sample_point        <= '0;
            samples_count_r     <= '0;
        end
        else begin
            rx_r2 <= rx_r; rx_r <= rx_in;
            if(state == IDLE) begin
                sample_point    <= '0;
                samples_count_r <= {1'b0,samples_per_bit[SAMPLE_WIDTH-1:1]}; //dividing by two
            end
            //else if(rx_r2 ^ rx_r && ~(rx_r^rx_in)) begin //known edge of data
            else if(rx_r2 != rx_r) begin //known edge of data
                samples_count_r <= {1'b0,samples_per_bit[SAMPLE_WIDTH-1:1]}; //dividing by two
                sample_point    <= '0;
            end
            else if (~(|samples_count_r)) begin
                samples_count_r <= samples_per_bit[SAMPLE_WIDTH-1:0]; //full count
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
                IDLE:  if((~rx_r2)&(~rx_r)&(~rx_in)) next = START;
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
                default: ;
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
            START: bit_count <= data_width;
            DATA: begin
                if(next == STOP) bit_count <= stop_bits;
                else if(sample_point) begin
                    if((|bit_count)) begin
                        bit_count <= bit_count -1;
                        data_r<={rx_r2,data_r[7:1]}; //shifting the data along LSB comes in first
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
            PARITY: bit_count <= stop_bits;
            STOP: begin
                data<=data_r;
                if(sample_point) begin
                    if((|bit_count)) begin
                        bit_count <= bit_count -1;
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
            OH_SHIT: data <= 8'haa;
            default: ;
        endcase
    end
endinterface



`endif
