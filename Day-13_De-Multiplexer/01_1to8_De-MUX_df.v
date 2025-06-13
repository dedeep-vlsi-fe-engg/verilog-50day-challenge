`timescale 1ns / 1ps

module demux_1to8_df(
    input in,
    input [2:0] sel,
    output [7:0] out
);

    assign out = (sel == 3'b000) ? 8'b00000001 & {8{in}} :
                 (sel == 3'b001) ? 8'b00000010 & {8{in}} :
                 (sel == 3'b010) ? 8'b00000100 & {8{in}} :
                 (sel == 3'b011) ? 8'b00001000 & {8{in}} :
                 (sel == 3'b100) ? 8'b00010000 & {8{in}} :
                 (sel == 3'b101) ? 8'b00100000 & {8{in}} :
                 (sel == 3'b110) ? 8'b01000000 & {8{in}} :
                 (sel == 3'b111) ? 8'b10000000 & {8{in}} :
                 8'b00000000;

endmodule