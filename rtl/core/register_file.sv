`timescale 1ps/1ps
module register_file(
    input  logic        clk,
    input  logic        reg_write,

    input  logic [4:0]  rs1,
    input  logic [4:0]  rs2,
    input  logic [4:0]  rd,

    input  logic [31:0] write_data,

    output logic [31:0] read_data1,
    output logic [31:0] read_data2
);

  // 32 registers, each 32 bits wide
    logic [31:0] registers [0:31];

    integer i;

    // Initialize registers to zero (simulation only)
    initial begin
        for (i = 0; i < 32; i = i + 1)
            registers[i] = 32'd0;
    end

    // Synchronous write
    always_ff @(posedge clk) begin
        if (reg_write && (rd != 5'd0))
            registers[rd] <= write_data;
    end

    // Asynchronous read
    always_comb begin
        read_data1 = (rs1 == 5'd0) ? 32'd0 : registers[rs1];
        read_data2 = (rs2 == 5'd0) ? 32'd0 : registers[rs2];
    end

endmodule