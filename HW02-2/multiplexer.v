`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 10:47:30
// Design Name: 
// Module Name: multiplexer
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


//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

//YOUR CODE HERE
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;

reg [1:0] new_X;
assign X = new_X;

always @(A, B, C, D, SEL) 
begin
    
    case (SEL)

        2'b00: new_X = A;
        2'b01: new_X = B;
        2'b10: new_X = C;
        2'b11: new_X = D;
        default: new_X = 2'b00;

    endcase

end

endmodule
