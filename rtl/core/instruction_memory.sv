`timescale 1ns/1ps

module instruction_memory(
    input logic [31:0] pc,
    output logic [31:0] instruction
);

// 256 x 32-bit Instruction ROM
parameter DEPTH = 256;
logic [31:0] mem [0:DEPTH-1];

initial begin
    $readmemh("program.mem",mem);
end

    // Convert byte address to word index
    assign instruction = mem[pc[31:2]];

endmodule