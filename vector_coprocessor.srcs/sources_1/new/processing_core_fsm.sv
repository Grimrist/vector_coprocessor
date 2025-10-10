`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 05:02:20 PM
// Design Name: 
// Module Name: processing_core_fsm
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


module processing_core_fsm 
#(parameter MAX_ADDR = 1024) (
	input 	logic clk, rst, man_ready, cmd_ready, splitter_busy,
	input 	logic [2:0] cmd,
	output logic data_ready, bram_enable,
	output logic [9:0] addr
);

//Declarations:------------------------------

//FSM states type:
enum logic [10:0] {IDLE, SUM_EXEC, SUM_INCR, SUM_READY, SUM_WAIT} CurrentState, NextState;

//Timer-related declarations:
const logic [9:0] addr_max = MAX_ADDR;

//Part 3: Statements:---------------------------------------
logic addr_incr;

// Addr counter:
always_ff @(posedge clk)
    if (rst) addr <= 0;
    else if (CurrentState == IDLE) addr <= 0;
    else if (addr_incr) addr <= addr + 1;
    else addr <= addr;

//FSM state register:
always_ff @(posedge clk)
    if (rst) CurrentState <= IDLE;
    else CurrentState <= NextState;

//FSM combinational logic:
always_comb begin
    bram_enable = 1'b0;
    addr_incr = 1'b0;
    data_ready = 1'b0;
    case (CurrentState)
        IDLE: begin
            if (cmd_ready && (cmd == 1 || cmd == 2)) NextState = SUM_EXEC;
            else NextState = IDLE;
        end
    
        SUM_EXEC: begin
            bram_enable = 1'b1;
            if (!splitter_busy) NextState = SUM_READY;
            else NextState = SUM_EXEC;
        end
        
        SUM_READY: begin
            data_ready = 1'b1;
            NextState = SUM_WAIT;
        end
        
        SUM_WAIT: begin
            if (!splitter_busy) NextState = SUM_INCR;
            else NextState = SUM_WAIT;
        end
        
        SUM_INCR: begin
            if (addr >= addr_max-1) NextState = IDLE;
            else begin
            addr_incr = 1'b1;
            NextState = SUM_EXEC;
            end
        end
        
        default: begin
            NextState = IDLE;
        end
    endcase
end
////Optional output register (if required). Adds a FF at the output to prevent the propagation of glitches from comb. logic.
//always_ff @(posedge clk)
//    if (rst) begin //rst might be not needed here
//        new_outp1 <= ...;
//        new_outp2 <= ...; ...
//    end
//    else begin
//        new_outp1 <= outp1;
//        new_outp2 <= outp2; ...
//    end

endmodule
