`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 02:32:09 PM
// Design Name: 
// Module Name: tb_reg
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


module tb_reg;
localparam REGF_WIDTH=16,ALU_WIDTH=16;
logic [1:0] rs1;
logic [1:0] rs2;
logic [1:0] rd;
logic [ALU_WIDTH-1 : 0] alu_result;
logic clk;
logic [REGF_WIDTH-1:0]op1; 
logic [REGF_WIDTH-1:0]op2 ;



register_file#( .REGF_WIDTH(REGF_WIDTH) , .ALU_WIDTH(ALU_WIDTH)) 
              r1(.*);


initial begin 
clk=0;
forever 
#1 clk=~clk; 
end 
 
initial begin 
alu_result=16'b0000000000001111; rs1=2'b00 ; rs2=2'b01 ; rd=2'b01;
#4;
alu_result=16'b0000000000000010; rs1=2'b10 ; rs2=2'b01 ; rd=2'b11;
#4;
alu_result=16'b0000000000000010; rs1=2'b11 ; rs2=2'b00 ; rd=2'b10;
#4;

$finish;
end 


endmodule
