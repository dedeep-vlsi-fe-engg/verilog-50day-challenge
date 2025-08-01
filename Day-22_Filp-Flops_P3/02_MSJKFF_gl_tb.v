`timescale 1ns/1ps

module msjkff_gl_tb;
reg J, K, clk;
wire Q, Qn;

msjkff_gl uut (.J(J), .K(K), .clk(clk), .Q(Q), .Qn(Qn));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10 ns period
end

initial begin
    J=0; K=0; #10;  // Hold
    J=1; K=0; #10;  // Set
    J=0; K=1; #10;  // Reset
    J=1; K=1; #10;  // Toggle
    J=0; K=0; #10;  // Hold
    $finish;
end

endmodule