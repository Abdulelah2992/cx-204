`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:27:48 PM
// Design Name: 
// Module Name: tb_top
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


module tb_top;
logic clk , reset;
logic [15 : 0]alu_result;

top p1(.*);

initial begin 
clk=0;
forever
#1 clk=~clk;
end 


initial begin 
reset =1;
#4;
reset =0;
#4;
reset =1;
#4;
reset =1;
#10;

$finish;
end 
endmodule
