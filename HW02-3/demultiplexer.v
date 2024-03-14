`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 12:10:55
// Design Name: 
// Module Name: demultiplexer
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

//SEL = 2'b00, Output W = A, Output X = 2'b00, Output Y = 2'b00, Output Z = 2'b00
//SEL = 2'b01, Output W = 2'b00, Output X = A, Output Y = 2'b00, Output Z = 2'b00
//SEL = 2'b10, Output W = 2'b00, Output X = 2'b00, Output Y = A, Output Z = 2'b00
//SEL = 2'b11, Output W = 2'b00, Output X = 2'b00, Output Y = 2'b00, Output Z = A

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(

    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z

    );
    
//YOUR CODE HERE

//Trying something new, conditional operator [used with the ternary operator, '?']
assign W = (SEL == 2'b00) ? A : 2'b00;
assign X = (SEL == 2'b01) ? A : 2'b00;
assign Y = (SEL == 2'b10) ? A : 2'b00;
assign Z = (SEL == 2'b11) ? A : 2'b00;


endmodule
