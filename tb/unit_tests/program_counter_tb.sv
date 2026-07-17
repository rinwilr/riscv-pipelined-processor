`timescale 1ns/1ps
module program_counter_tb;
logic clk;
logic enable;
logic reset;
logic [31:0] next_pc;
logic [31:0] pc;

program_counter dut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .next_pc(next_pc),
    .pc(pc)
);

initial 
begin
clk=0;
end

always #5 clk = ~clk;

initial begin

    reset   = 1;
    enable  = 0;
    next_pc = 4;

    @(posedge clk); 

    reset   = 0;
    enable  = 1;
    next_pc = 4;

    @(posedge clk); 

    reset   = 0;
    enable  = 0;
    next_pc = 8;

    @(posedge clk); 

    reset   = 0;
    enable  = 1;
    next_pc = 12;

    @(posedge clk); 

    $finish;

end
endmodule