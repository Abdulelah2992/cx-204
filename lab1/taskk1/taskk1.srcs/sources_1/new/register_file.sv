module register_file#(parameter REGF_WIDTH=16,ALU_WIDTH=16)
                                           (input logic [1:0] rs1,
                                            input logic [1:0] rs2,
                                            input logic [1:0] rd,
                                            input logic [ALU_WIDTH-1 : 0] alu_result,
                                            input logic clk,
                                            output logic [REGF_WIDTH-1:0]op1, 
                                            output logic [REGF_WIDTH-1:0]op2 );


logic [ALU_WIDTH-1 : 0] x [0:3];

initial $readmemb("/home/it/Downloads/CX-204-Lab1/support_files/fib_rf.mem", x); // For Binary File


always_comb
    begin 
        case(rs1)
            2'b00: op1 <= x[0];
            2'b01: op1 <= x[1];
            2'b10: op1 <= x[2];
            2'b11: op1 <= x[3];
        endcase
    end 
    
always_comb
    begin 
        case(rs2)
            2'b00: op2 <= x[0];
            2'b01: op2 <= x[1];
            2'b10: op2 <= x[2];
            2'b11: op2 <= x[3];
        endcase
    end     

always @(posedge clk)
    begin 
        case(rd)
            2'b00: x[0] <= alu_result;
            2'b01: x[1] <= alu_result;
            2'b10: x[2] <= alu_result;
            2'b11: x[3] <= alu_result;
        endcase 
    end 


                                                                              
endmodule
