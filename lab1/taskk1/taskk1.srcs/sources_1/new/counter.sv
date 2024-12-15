module counter#(parameter PROG_VALUE=2)(input logic clk, reset,
               output logic [PROG_VALUE-1 : 0] q
               );
always @(posedge clk , negedge reset)
    begin 
        if(!reset)
            q=0;
        else 
            q=q+1;
    end         
endmodule
