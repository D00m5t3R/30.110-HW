`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 15:27:39
// Design Name: 
// Module Name: nibbleadd
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


module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);

//YOUR CODE HERE
reg[4:0]new_q;
assign q = new_q;

always @(A, B, ctrl) 
begin
    
    if (ctrl == 1'b0) 
    begin
        new_q = A[3:0] + B[3:0];
    end

    else
    begin
        new_q = A[7:4] + B[7:4];
    end

end



endmodule
