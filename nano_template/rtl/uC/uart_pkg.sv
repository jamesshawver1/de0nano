`ifndef uart_pkg
`define uart_pkg

package uart_pkg;
    typedef enum logic [1:0] {
        NO_PARITY,
        ODD_PARITY,
        EVEN_PARITY
    } parity_t;
endpackage


`endif
