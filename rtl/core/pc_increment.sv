`timescale 1ns/1ps
module pc_increment(
    input logic [31:0] pc,
    output logic [31:0] next_pc
);

always_comb 
begin
next_pc=pc+32'd4;
end
endmodule