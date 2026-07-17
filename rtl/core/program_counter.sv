`timescale 1ns/1ps
module program_counter(
    input logic clk,
    input logic reset,
    input logic enable,
    input logic [31:0] next_pc,
    output logic [31:0] pc
);

always_ff @(posedge clk)
begin
if (reset)
pc<=32'h0000_0000;
else if (enable)
pc<=next_pc;
else
pc<=pc;
end
endmodule
