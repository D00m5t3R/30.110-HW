`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 16:51:03
// Design Name: 
// Module Name: ccta_tb
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


module ccta_tb();

reg [3:0] A;
reg [3:0] B;
reg [3:0] C;
reg rst;
reg ctrl;
wire [4:0] q;

CCTA INST1 (
    .A(A), 
    .B(B), 
    .C(C), 
    .rst(rst), 
    .ctrl(ctrl), 
    .q(q)
);

initial 
begin

    rst = 1;
    A = 4'h4; 
    B = 4'h1; 
    C = 4'h9; 
    ctrl = 1'b0; 
    #10

    rst = 0;
    A = 4'h4; 
    B = 4'h1; 
    C = 4'h9; 
    ctrl = 1'b0; 
    #10

    A = 4'h3; 
    B = 4'hd; 
    C = 4'hd; 
    ctrl = 1'b0; 
    #10

    A = 4'h5; 
    B = 4'h2; 
    C = 4'h1; 
    ctrl = 1'b0; 
    #10

    A = 4'hd; 
    B = 4'h6; 
    C = 4'hd; 
    ctrl = 1'b0; 
    #10

    A = 4'hd; 
    B = 4'hc; 
    C = 4'h9; 
    ctrl = 1'b0; 
    #10

    A = 4'h6; 
    B = 4'h5; 
    C = 4'ha; 
    ctrl = 1'b1; 
    #10

    A = 4'h5; 
    B = 4'h7; 
    C = 4'h2; 
    ctrl = 1'b1; 
    #10    

    A = 4'hf; 
    B = 4'h2; 
    C = 4'he; 
    ctrl = 1'b1; 
    #10    

    A = 4'h8; 
    B = 4'h5; 
    C = 4'hc; 
    ctrl = 1'b1; 
    #10 

    A = 4'hd; 
    B = 4'hd; 
    C = 4'h5; 
    ctrl = 1'b1; 
    #10     

    A = 4'h3; 
    B = 4'ha; 
    C = 4'h0; 
    ctrl = 1'b1; 
    #10     
    
    $finish;
end

endmodule
