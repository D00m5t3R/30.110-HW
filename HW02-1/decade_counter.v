`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 08:32:12
// Design Name: 
// Module Name: decade_counter
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

module decade_counter(

    input clk,
    input rst, 
    output [3:0] count,
    output ten

    );

reg [3:0] new_count;
reg new_ten;
assign count = new_count;
assign ten = new_ten;

always @(posedge clk or posedge rst) 
begin
    
    if (rst) 
    begin
        new_ten <= 4'b0000;
        new_count <= 4'b0000;
    end

    else 
    begin
        if (count >= 4'b1001) 
        begin
            new_ten <= 4'b0001;
            new_count <= 4'b0000;
        end 
        
        else 
        begin
            new_count <= new_count + 4'b0001;
            new_ten <= 4'b0000;
        end
    end

end

endmodule


//DECIMAL below for testing logic

/*
module decade_counter(

    input clk,
    input rst, 
    output [3:0] count,
    output ten

    );

reg [3:0] new_count;
reg new_ten;
assign count = new_count;
assign ten = new_ten;

always @(posedge clk or posedge rst) 
begin
    
    if (rst) 
    begin
        new_ten <= 0;
        new_count <= 0;
    end

    else 
    begin

        if (count >= 9) 
        begin
            new_ten <= 1;
            new_count <= 0;
        end 
        
        else 
        begin
            new_count <= new_count + 1;
            new_ten <= 0;
        end

    end

end

endmodule
*/