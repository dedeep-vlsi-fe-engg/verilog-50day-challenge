`timescale 1ns/1ps

module uc_beh_tb;
reg clk, clr, load, up_down, en;
reg [3:0] data;
wire [3:0] q;

uc_beh uut (.clk(clk), .clr(clr), .load(load), .up_down(up_down), .en(en), .data(data), .q(q));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Initial reset
    clr = 1; load = 0; en = 0; data = 4'b0000; up_down = 1; #10;
    clr = 0;
    // Load operation
    load = 1; data = 4'b1010; #10;
    load = 0;
    // Count up
    en = 1; up_down = 1; #40;
    // Count down
    up_down = 0; #40;
    // Disable counting
    en = 0; #20;
    // Asynchronous clear
    clr = 1; #10;
    clr = 0; #10;
    $finish;
end
endmodule