`timescale 1ns/1ps
module pc_increment_tb;
logic [31:0] pc;
logic [31:0] next_pc;

pc_increment dut (
    .pc(pc),
    .next_pc(next_pc)
);

initial begin

    pc = 32'd0;
    #10;

    pc = 32'd4;
    #10;

    pc = 32'd100;
    #10;

    pc = 32'h0000_00FC;
    #10;

    pc = 32'hFFFF_FFFC;
    #10;

    $finish;

end

endmodule