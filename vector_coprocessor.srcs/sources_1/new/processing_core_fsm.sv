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
	input 	logic clk, rst, cmd_ready, splitter_busy, out_mode,
	output logic data_ready, bram_enable, store_res,
	output logic [$clog2(MAX_ADDR)-1:0] addr
);

//Declarations:------------------------------

//FSM states type:
enum logic [10:0] {IDLE, SUM_EXEC, SUM_INCR, SUM_READY, SUM_WAIT, CUM_EXEC, CUM_INCR, CUM_SEND} CurrentState, NextState;
//Timer-related declarations:
const logic [2:0] T1 = 5;
const logic [2:0] tmax = T1-1;
logic [2:0] t;
const logic [$clog2(MAX_ADDR)-1:0] addr_max = MAX_ADDR-1;

//Part 3: Statements:---------------------------------------
logic addr_incr;

 //Timer :
always_ff @(posedge clk)
    if (rst) t <= 0;
    else if (CurrentState != NextState) t <= 0; //reset the timer when state changes
    else if (t != tmax) t <= t + 1;

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
    store_res = 1'b0;
    case (CurrentState)
        IDLE: begin
            if (cmd_ready) begin
                if (!out_mode) NextState = SUM_EXEC;
                else NextState = CUM_EXEC;
            end
            else NextState = IDLE;
        end
    
        SUM_EXEC: begin
            bram_enable = 1'b1;
            store_res = 1'b1;
            if (!splitter_busy && t >= T1-1) NextState = SUM_READY;
            else NextState = SUM_EXEC;
        end
        
        SUM_READY: begin
            bram_enable = 1'b1;
            data_ready = 1'b1;
            NextState = SUM_WAIT;
        end
        
        SUM_WAIT: begin
            bram_enable = 1'b1;
            if (!splitter_busy) NextState = SUM_INCR;
            else NextState = SUM_WAIT;
        end
        
        SUM_INCR: begin
            if (addr >= addr_max) NextState = IDLE;
            else begin
            addr_incr = 1'b1;
            NextState = SUM_EXEC;
            end
        end
        
        CUM_EXEC: begin
            bram_enable = 1'b1;
            if (t >= T1-1) NextState = CUM_INCR;
            else NextState = CUM_EXEC;
        end
        
        CUM_INCR: begin
            store_res = 1'b1;
            if (addr >= addr_max) NextState = CUM_SEND;
            else begin
            addr_incr = 1'b1;
            NextState = CUM_EXEC;
            end
        end
        
        CUM_SEND: begin
            data_ready = 1'b1;
            if (!splitter_busy) NextState = IDLE;
            else NextState = CUM_SEND;
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
