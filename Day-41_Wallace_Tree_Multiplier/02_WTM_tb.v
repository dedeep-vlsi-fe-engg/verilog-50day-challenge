`timescale 1ns/1ps

module wallace_tree_multiplier_tb;
  reg [3:0] A, B;
  wire [7:0] Product;

  wallace_tree_multiplier uut (.A(A), .B(B), .Product(Product));

  initial begin
    // Test Case 1
    A = 4'b0001; B = 4'b0000; #10; // 1 * 0 = 0

    // Test Case 2
    A = 4'b1011; B = 4'b0100; #10; // 11 * 4 = 44

    // Test Case 3
    A = 4'b1101; B = 4'b0111; #10; // 13 * 7 = 91

    // Test Case 4
    A = 4'b1001; B = 4'b0111; #10; // 9 * 7 = 63

    // Test Case 5
    A = 4'b1111; B = 4'b1111; #10; // 15 * 15 = 225

    // Test Case 6
    A = 4'b0101; B = 4'b0011; #10; // 5 * 3 = 15

    $finish;
  end

endmodule
