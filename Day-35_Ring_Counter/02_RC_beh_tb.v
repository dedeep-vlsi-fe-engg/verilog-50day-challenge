`timescale 1ns/1ps

module rc_beh_tb;
reg clk, rst;
wire [3:0] q;

rc_beh uut (.clk(clk), .rst(rst), .q(q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // Clock with 10ns period
end

initial begin
    rst = 1; #10;
    rst = 0; #100;
    $finish;
end

endmodule