`timescale 1ns/1ps
module smod6c_beh_tb;

reg clk, rst;
wire [2:0] q_mod6;

smod6c_beh u1 (.clk(clk), .rst(rst), .q(q_mod6));

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