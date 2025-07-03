`timescale 1ns/1ps

module bsreg_beh_tb;
reg clk, rst, dir, serial_in;
wire [3:0] data_out;

bsreg_beh uut (.clk(clk), .rst(rst), .dir(dir), .serial_in(serial_in), .data_out(data_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10 ns clock
end

initial begin
    rst = 1; serial_in = 0; dir = 0; #10;
    rst = 0;
    // Shift Right
    dir = 0; serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    // Shift Left
    dir = 1; serial_in = 1; #10;
    serial_in = 0; #10;
    $finish;
end
endmodule