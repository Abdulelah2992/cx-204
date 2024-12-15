module top#(parameter PROG_VALUE=2,IMEM_DEPTH=64 , ALU_WIDTH =16 ,REGF_WIDTH=16) 
                                    (input logic clk , reset,
                                     output logic [ALU_WIDTH-1 : 0]alu_result
    );
    
logic [PROG_VALUE-1 : 0] counter_out; 
logic [7:0]instruction;
logic [ALU_WIDTH-1 : 0] op1 ;      
logic [ALU_WIDTH-1 : 0] op2 ;                     
logic [ALU_WIDTH-1 : 0] alu_result;

counter #(.PROG_VALUE(PROG_VALUE)) c1(.clk(clk), 
                                      .reset(reset) , 
                                      .q(counter_out));


instruction_memory #(.IMEM_DEPTH(IMEM_DEPTH)) im1(
                                                   .counter_out(counter_out),
                                                   .instruction(instruction) 
                                                                             );

register_file#(.REGF_WIDTH(REGF_WIDTH) , .ALU_WIDTH(ALU_WIDTH)) reg1(
                                                 .rs1(instruction[3:2]),
                                                 .rs2(instruction[5:4]),
                                                 .rd(instruction[7:6]), 
                                                 .alu_result(alu_result),
                                                 .clk(clk),
                                                 .op1(op1),
                                                 .op2(op2) 
                                                                  );

alu#(.ALU_WIDTH(ALU_WIDTH))
                             a1(.op1(op1) ,
                                .op2(op2) ,
                                .opcode(instruction[1:0]) ,
                                .alu_result(alu_result) 
                                     );

    
endmodule
