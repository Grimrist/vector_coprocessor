`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2025 01:46:12 PM
// Design Name: 
// Module Name: tx_splitter_new
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


module tx_splitter_new (
	input 	logic clk, rst,
	input 	logic data_ready, tx_busy, 
	input   logic [1:0] max_pck,
	output 	logic tx_start, splitter_busy,
	output logic [1:0] data_sel
);

//Declarations:------------------------------
//FSM states type:
enum logic [3:0] {IDLE, SEND_PCK, WAIT_PCK, INCR_PCK} CurrentState, NextState;

logic incr_sel;
 
always_ff @(posedge clk) begin
    if (rst | CurrentState == IDLE)
        data_sel <= 'b0;
    else if (incr_sel)
        data_sel <= data_sel + 1'b1;
end


//Statements:--------------------------------

//FSM state register:
always_ff @(posedge clk)
    if (rst) CurrentState <= IDLE;
    else CurrentState <= NextState;

//FSM combinational logic:
always_comb begin
    incr_sel = 1'b0;
    tx_start = 1'b0;
    splitter_busy = 1'b1;
    
    case (CurrentState)
        IDLE: begin
            splitter_busy = 1'b0;
            if (data_ready) NextState = SEND_PCK;
            else NextState = IDLE;
        end
    
        SEND_PCK: begin
            tx_start = 1'b1;
            NextState = WAIT_PCK;
        end
    
        WAIT_PCK: begin
            if (!tx_busy) NextState = INCR_PCK;
            else NextState = WAIT_PCK;
        end
        
        INCR_PCK: begin
            if (data_sel >= max_pck) NextState = IDLE;
            else begin 
                incr_sel = 1'b1;
                NextState = SEND_PCK;
            end
        end
        
        default: begin
            NextState = IDLE;
        end
    endcase
end

endmodule

