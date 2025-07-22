module half_adder(input a, b, output s0, c0);
  assign s0 = a ^ b;
  assign c0 = a & b;
endmodule

module full_adder(input a, b, cin, output s0, c0);
  assign s0 = a ^ b ^ cin;
  assign c0 = (a & b) | (b & cin) | (a & cin);
endmodule

module booth_multiplier(input [3:0] A, B, output [7:0] z);
  wire p00, p01, p02, p03;
  wire p10, p11, p12, p13;
  wire p20, p21, p22, p23;
  wire p30, p31, p32, p33;

  assign p00 = A[0] & B[0];
  assign p01 = A[0] & B[1];
  assign p02 = A[0] & B[2];
  assign p03 = A[0] & B[3];
  assign p10 = A[1] & B[0];
  assign p11 = A[1] & B[1];
  assign p12 = A[1] & B[2];
  assign p13 = A[1] & B[3];
  assign p20 = A[2] & B[0];
  assign p21 = A[2] & B[1];
  assign p22 = A[2] & B[2];
  assign p23 = A[2] & B[3];
  assign p30 = A[3] & B[0];
  assign p31 = A[3] & B[1];
  assign p32 = A[3] & B[2];
  assign p33 = A[3] & B[3];

  wire [10:0] c; // Carry wires
  wire [5:0] s;  // Sum wires

  assign z[0] = p00;

  // Row 0
  half_adder h0(p01, p10, z[1], c[0]);
  half_adder h1(p11, p20, s[0], c[1]);
  half_adder h2(p21, p30, s[1], c[2]);

  // Row 1
  full_adder f0(p02, c[0], s[0], z[2], c[3]);
  full_adder f1(p12, c[1], s[1], s[2], c[4]);
  full_adder f2(p22, c[2], p31, s[3], c[5]);

  // Row 2
  full_adder f3(p03, c[3], s[2], z[3], c[6]);
  full_adder f4(p13, c[4], s[3], s[4], c[7]);
  full_adder f5(p23, c[5], p32, s[5], c[8]);

  // Row 3
  half_adder h3(c[6], s[4], z[4], c[9]);
  full_adder f6(c[9], c[7], s[5], z[5], c[10]);
  full_adder f7(c[10], c[8], p33, z[6], z[7]);

endmodule