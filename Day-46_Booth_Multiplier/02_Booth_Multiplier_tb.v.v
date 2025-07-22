module booth_multiplier_tb;
  reg [3:0] A, B;
  wire [7:0] z;

  booth_multiplier uut(.A(A), .B(B), .z(z));

  initial begin
    A = 4'd3; B = 4'd2; #10;
    A = 4'd5; B = 4'd5; #10;
    A = 4'd7; B = 4'd3; #10;
    A = 4'd15; B = 4'd15; #10;
    $finish;
  end
endmodule
