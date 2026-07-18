`timescale 1ns/1ps

module instruction_memory_tb;

logic [31:0] pc;
logic [31:0] instruction;

instruction_memory uut (
    .pc(pc),
    .instruction(instruction)
);

initial begin

    pc = 0;
    #10;

    pc = 4;
    #10;

    pc = 8;
    #10;

    pc = 12;
    #10;

    pc = 16;
    #10;

    pc = 20;
    #10;

    $finish;

end

endmodule