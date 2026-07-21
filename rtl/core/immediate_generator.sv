`timescale 1ps/1ps

module immediate_generator(

    input  logic [31:0] instruction,
    output logic [31:0] immediate

);

    always_comb begin
        // I-Type Immediate
        immediate = {{20{instruction[31]}}, instruction[31:20]};
    end

endmodule