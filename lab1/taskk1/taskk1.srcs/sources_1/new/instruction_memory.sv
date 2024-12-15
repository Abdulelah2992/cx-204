module instruction_memory #(parameter IMEM_DEPTH = 64 )(
          input logic [1:0]counter_out,
          output logic [7:0]instruction 
                                    );
            logic [7:0]a [IMEM_DEPTH-1:0];          
            initial $readmemb("/home/it/Downloads/CX-204-Lab1/support_files/fib_im.mem", a); // For Binary File
            
            always @(*)
                begin 
                    case(counter_out)
                        2'b00: instruction = a[0]; 
                        2'b01: instruction = a[1];
                        2'b10: instruction = a[2];
                        2'b11: instruction = a[3];
                        endcase
                      end



endmodule