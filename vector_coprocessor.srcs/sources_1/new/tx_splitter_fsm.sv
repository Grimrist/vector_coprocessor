`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2025 08:29:50 PM
// Design Name: 
// Module Name: tx_splitter_fsm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tx_splitter_fsm (
	input 	logic clk, rst,
	input 	logic data_ready, tx_busy,
	output 	logic data_sel, tx_start, splitter_busy
);

 //Declarations:------------------------------

 //FSM states type:
enum logic [5:0] {IDLE, SEND_LSB, WAIT_LSB, SEND_MSB, WAIT_MSB} CurrentState, NextState;

//Statements:--------------------------------

//FSM state register:
always_ff @(posedge clk)
    if (rst) CurrentState <= IDLE;
    else CurrentState <= NextState;

//FSM combinational logic:
always_comb begin
    data_sel = 1'b0;
    tx_start = 1'b0;
    splitter_busy = 1'b1;
    
    case (CurrentState)
        IDLE: begin
            splitter_busy = 1'b0;
            if (data_ready) NextState = SEND_LSB;
            else NextState = IDLE;
        end
    
        SEND_LSB: begin
            tx_start = 1'b1;
            NextState = WAIT_LSB;
        end
    
        WAIT_LSB: begin
            if (!tx_busy) NextState = SEND_MSB;
            else NextState = WAIT_LSB;
        end
        
        SEND_MSB: begin
            data_sel = 1'b1;
            tx_start = 1'b1;
            NextState = WAIT_MSB;
        end
    
        WAIT_MSB: begin
            if (!tx_busy) NextState = IDLE;
            else NextState = WAIT_MSB;
        end
        
        default: begin
            NextState = IDLE;
        end
    endcase
end

endmodule

