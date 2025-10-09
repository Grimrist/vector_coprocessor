`timescale 1ns / 1ps
module FSM_RX_ctrl#(
    parameter MEMORY_DEPTH = 1024
)(
    input logic clk, rst, rx_ready,
    input logic [9:0] rx_data,
    output logic enable,
    output logic write_enable,
    output logic [$clog2(MEMORY_DEPTH)-1:0] write_address,  
    output logic [9:0] write_data
);
    
    enum logic [1:0] {READ_BYTE, WRITE_BYTE} state, state_next;
    logic [$clog2(MEMORY_DEPTH)-1:0] write_address_next;
    logic [9:0] write_data_next;
    assign write_data = rx_data;
    
    always_ff @(posedge clk) begin   
        if (rst) begin
            state <= READ_BYTE;
            write_address <= 'b0;
        end
        else begin
            state <= state_next;
            write_address <= write_address_next;
        end 
    end
    always_comb begin
        state_next = READ_BYTE;
        write_enable = 1'b0;
        enable = 1'b0;
        case(state)
            READ_BYTE: begin
                if(rx_ready) begin
                    state_next = WRITE_BYTE;
                end
            end
            WRITE_BYTE: begin
                write_enable = 1'b1;
                enable = 1'b1;
                state_next = READ_BYTE;
            end
        endcase
    end
    
    
    always_comb begin
        if (write_enable) begin
            if(write_address == (MEMORY_DEPTH-1))
                write_address_next = 'd0;
            else
                write_address_next = write_address + 'd1;
        end
        else
            write_address_next = write_address;
    end
        
endmodule
