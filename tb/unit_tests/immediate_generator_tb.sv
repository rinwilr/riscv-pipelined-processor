`timescale 1ps/1ps

module immediate_generator_tb;

    logic [31:0] instruction;
    logic [31:0] immediate;

    immediate_generator dut (
        .instruction(instruction),
        .immediate(immediate)
    );

    initial begin

        // Test 1: addi x5, x1, 10
        instruction = 32'h00A08293;
        #10;

        // Test 2: addi x5, x1, -4
        instruction = 32'hFFC08293;
        #10;

        $finish;

    end

endmodule