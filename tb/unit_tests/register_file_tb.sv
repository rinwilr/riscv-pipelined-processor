`timescale 1ps/1ps
module register_file_tb;
    logic        clk;
    logic        reg_write;
    logic [4:0]  rs1;
    logic [4:0]  rs2;
    logic [4:0]  rd;
    logic [31:0] write_data;

    logic [31:0] read_data1;
    logic [31:0] read_data2;

    register_file dut (
        .clk(clk),
        .reg_write(reg_write),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    always #5 clk = ~clk;

    initial begin

        clk = 0;
        reg_write = 0;
        rs1 = 0;
        rs2 = 0;
        rd = 0;
        write_data = 0;

        #10;
        reg_write = 1;
        rd = 5;
        write_data = 32'd100;

        #10;
        reg_write = 0;
        rs1 = 5;
        #10;

        reg_write = 1;
        rd = 10;
        write_data = 32'd200;

        #10;
        reg_write = 0;
        rs1 = 5;
        rs2 = 10;

        #10;
        reg_write = 1;
        rd = 0;
        write_data = 32'd999;

        #10;
        rs1 = 0;

        #10;
        reg_write = 0;
        rd = 15;
        write_data = 32'd555;

        #10;

        rs1 = 15;

        #20;

        $finish;

    end

endmodule