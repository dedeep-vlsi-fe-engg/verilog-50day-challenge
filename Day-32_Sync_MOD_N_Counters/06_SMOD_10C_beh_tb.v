`timescale 1ns/1ps

module smod10c_beh_tb;
reg clk, rst;
wire [3:0] q_mod10;

smod10c_beh u2 (.clk(clk), .rst(rst), .q(q_mod10));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock
end

initial begin
    rst = 1; #10;
    rst = 0; #150;
    $finish;
end

endmodule