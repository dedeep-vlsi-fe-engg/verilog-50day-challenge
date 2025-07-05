`timescale 1ns/1ps

module rc_up_beh_tb;
reg clk, rst;
wire [3:0] up_q;

rc_up_beh u1 (.clk(clk), .rst(rst), .q(up_q));

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