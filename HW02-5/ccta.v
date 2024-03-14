`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 16:51:03
// Design Name: 
// Module Name: ccta
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


//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);

reg[4:0]new_q;
assign q = new_q;

always @(rst, ctrl, A, B, C) 
begin
    if (rst == 1'b1) 
    begin
        new_q <= 0; // Reset the output
    end

    else if (ctrl == 1'b1) 
    begin
        new_q <= A - C; // If ctrl == 1, perform subtraction of A and C
    end

    else 
    begin
        new_q <= A + B; // If ctrl == 0, perform addition of A and B
    end
end

endmodule