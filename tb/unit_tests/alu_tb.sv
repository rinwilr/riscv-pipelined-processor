`timescale 1ns/1ps
module alu_tb;
logic [31:0] operand_a;
logic [31:0] operand_b;
logic [3:0] alu_control;
logic [31:0] result;
logic zero;

alu dut(
    .operand_a(operand_a),
    .operand_b(operand_b),
    .alu_control(alu_control),
    .result(result),
    .zero(zero)
);

initial begin

    operand_a=20;
    operand_b=10;
    alu_control=4'b0000;
    #10

    operand_a = 20;
    operand_b = 10;
    alu_control = 4'b0001;
    #10;

    operand_a = 32'hF0F0F0F0;
    operand_b = 32'h0F0F0F0F;
    alu_control = 4'b0010;
    #10;

    operand_a = 32'hF0F0F0F0;
    operand_b = 32'h0F0F0F0F;
    alu_control = 4'b0011;
    #10

    operand_a = 32'hAAAA5555;
    operand_b = 32'hFFFF0000;
    alu_control = 4'b0100;
    #10;

    operand_a = 32'd5;
    operand_b = 32'd2;
    alu_control = 4'b0101;
    #10;

    operand_a = 32'd20;
    operand_b = 32'd2;
    alu_control = 4'b0110;
    #10;

    operand_a = -32'd8;
    operand_b = 32'd2;
    alu_control = 4'b0111;
    #10;

    operand_a = -32'd5;
    operand_b = 32'd2;
    alu_control = 4'b1000;
    #10;

    operand_a = 32'd10;
    operand_b = 32'd2;
    alu_control = 4'b1000;
    #10;

    operand_a = 32'd15;
    operand_b = 32'd15;
    alu_control = 4'b0001; 
    #10;

    $finish;

    end

endmodule