`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 01:15:42 PM
// Design Name: 
// Module Name: tb_alu
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


module tb_alu;
localparam ALU_WIDTH=16;
logic [ALU_WIDTH-1 : 0] op1 ;
logic [ALU_WIDTH-1 : 0] op2 ;
logic [1:0]opcode ;
logic [ALU_WIDTH-1 : 0] alu_result ;

alu#(.ALU_WIDTH(ALU_WIDTH))
                           l1(.*);

initial begin 
op1=4'h0001; op2=4'h0009;opcode=2'b00;  
#5;
opcode=2'b01;
#5;
opcode=2'b10;
#5;
opcode=2'b11;
#5;
                             
$finish;
end 

endmodule
