`timescale 1ns/1ps

module control_unit_tb;

    logic [6:0] opcode;

    logic reg_write;
    logic alu_src;
    logic mem_read;
    logic mem_write;
    logic mem_to_reg;
    logic branch;
    logic [1:0] alu_op;

    control_unit dut(

        .opcode(opcode),

        .reg_write(reg_write),
        .alu_src(alu_src),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .mem_to_reg(mem_to_reg),
        .branch(branch),
        .alu_op(alu_op)

    );

    initial begin

        // R-Type
        opcode = 7'b0110011;
        #10;

        // addi
        opcode = 7'b0010011;
        #10;

        // lw
        opcode = 7'b0000011;
        #10;

        // sw
        opcode = 7'b0100011;
        #10;

        // beq
        opcode = 7'b1100011;
        #10;

        // Invalid Opcode
        opcode = 7'b1111111;
        #10;

        $finish;

    end

endmodule