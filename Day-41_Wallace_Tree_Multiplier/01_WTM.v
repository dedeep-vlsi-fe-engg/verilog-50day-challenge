`timescale 1ns / 1ps

module wallace_tree_multiplier (
  input  [3:0] A,
  input  [3:0] B,
  output [7:0] Product
);

  wire [3:0] pp0, pp1, pp2, pp3;
  wire [7:0] p;

  // Partial products (ANDing each bit)
  assign pp0 = A & {4{B[0]}};
  assign pp1 = A & {4{B[1]}};
  assign pp2 = A & {4{B[2]}};
  assign pp3 = A & {4{B[3]}};

  // Shifted partial products for alignment
  wire [7:0] pp0_ext = {4'b0000, pp0};
  wire [7:0] pp1_ext = {3'b000, pp1, 1'b0};
  wire [7:0] pp2_ext = {2'b00, pp2, 2'b00};
  wire [7:0] pp3_ext = {1'b0, pp3, 3'b000};

  // Add partial products (CSA-style logic simplified here)
  assign p = pp0_ext + pp1_ext + pp2_ext + pp3_ext;
  assign Product = p;

endmodule
