`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 09:36:39
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always begin
    //YOUR CODE HERE - Generate 20 unit time clock;
    #10 clk = ~clk; 
end

initial begin
    //YOUR CODE HERE - Initialize the clk, rst;
    rst = 1;
    clk = 0;

    #30 rst = 0;
    #200;
    $finish; 
    
end

endmodule