`timescale 1ns/1ps

module data_memory_tb;

    logic        clk;
    logic        mem_read;
    logic        mem_write;

    logic [31:0] address;
    logic [31:0] write_data;

    logic [31:0] read_data;

    // Instantiate DUT
    data_memory dut (

        .clk(clk),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .address(address),
        .write_data(write_data),
        .read_data(read_data)

    );

    // Clock Generation
    always #5 clk = ~clk;

    initial begin

        // Initialize
        clk = 0;
        mem_read = 0;
        mem_write = 0;
        address = 0;
        write_data = 0;

        // --------------------------
        // Test 1 : Write 100 at Address 0
        // --------------------------
        #10;
        mem_write = 1;
        address = 32'd0;
        write_data = 32'd100;

        #10;
        mem_write = 0;

        // Read Address 0
        mem_read = 1;
        address = 32'd0;

        #10;
        mem_read = 0;

        // --------------------------
        // Test 2 : Write 250 at Address 4
        // --------------------------
        mem_write = 1;
        address = 32'd4;
        write_data = 32'd250;

        #10;
        mem_write = 0;

        // Read Address 4
        mem_read = 1;
        address = 32'd4;

        #10;
        mem_read = 0;

        // --------------------------
        // Test 3 : Write 500 at Address 8
        // --------------------------
        mem_write = 1;
        address = 32'd8;
        write_data = 32'd500;

        #10;
        mem_write = 0;

        // Read Address 8
        mem_read = 1;
        address = 32'd8;

        #10;
        mem_read = 0;

        // --------------------------
        // Test 4 : Read Without Enable
        // --------------------------
        address = 32'd0;

        #10;

        $finish;

    end

endmodule
