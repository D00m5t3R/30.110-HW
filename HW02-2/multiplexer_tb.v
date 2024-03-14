`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 11:16:43
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb();

    reg[1:0]A;
    reg[1:0]B;
    reg[1:0]C;
    reg[1:0]D;
    reg[1:0]SEL;
    wire[1:0]X;

multiplexer INST1 (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SEL(SEL),
    .X(X)
);

initial begin 

    A = 2'b00;
    B = 2'b01;
    //C = 2'b01; //for checking against the LarkDocs output
    C = 2'b10;
    D = 2'b11;

    SEL = 2'b00;
    #10

    SEL = 2'b01;
    #10

    SEL = 2'b10;
    #10

    SEL = 2'b11;
    #10

    $finish;

end


endmodule
