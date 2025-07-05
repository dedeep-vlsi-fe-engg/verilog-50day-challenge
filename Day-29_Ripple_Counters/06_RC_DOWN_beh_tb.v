`timescale 1ns/1ps

module rc_down_beh_tb;
reg clk, rst;
wire [3:0] down_q;

rc_down_beh u2 (.clk(clk), .rst(rst), .q(down_q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock
end

initial begin
    rst = 1; #10;
    rst = 0; #200;
    $finish;
end

endmodule