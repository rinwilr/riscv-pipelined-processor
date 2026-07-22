`timescale 1ns/1ps

module alu(

    input  logic [31:0] operand_a,
    input  logic [31:0] operand_b,
    input  logic [3:0]  alu_control,

    output logic [31:0] result,
    output logic        zero

);

    // ALU Control Encoding
    localparam ALU_ADD = 4'b0000;
    localparam ALU_SUB = 4'b0001;
    localparam ALU_AND = 4'b0010;
    localparam ALU_OR  = 4'b0011;
    localparam ALU_XOR = 4'b0100;
    localparam ALU_SLL = 4'b0101;
    localparam ALU_SRL = 4'b0110;
    localparam ALU_SRA = 4'b0111;
    localparam ALU_SLT = 4'b1000;

    always_comb begin

        case (alu_control)

            ALU_ADD:
                result = operand_a + operand_b;

            ALU_SUB:
                result = operand_a - operand_b;

            ALU_AND:
                result = operand_a & operand_b;

            ALU_OR:
                result = operand_a | operand_b;

            ALU_XOR:
                result = operand_a ^ operand_b;

            ALU_SLL:
                result = operand_a << operand_b[4:0];

            ALU_SRL:
                result = operand_a >> operand_b[4:0];

            ALU_SRA:
                result = $signed(operand_a) >>> operand_b[4:0];

            ALU_SLT:
                if ($signed(operand_a) < $signed(operand_b))
                    result = 32'd1;
                else
                    result = 32'd0;

            default:
                result = 32'd0;

        endcase

    end

    // Zero flag
    assign zero = (result == 32'd0);

endmodule