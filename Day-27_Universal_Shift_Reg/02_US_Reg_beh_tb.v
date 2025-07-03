`timescale 1ns/1ps

module usreg_beh_tb;
reg clk, rst;
reg [1:0] sel;
reg [3:0] data_in;
reg serial_in;
wire [3:0] data_out;

usreg_beh uut (.clk(clk), .rst(rst), .sel(sel), .data_in(data_in), .serial_in(serial_in), .data_out(data_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1; sel = 2'b00; data_in = 4'b0000; serial_in = 0; #10;
    rst = 0;
    // Parallel load
    sel = 2'b11; data_in = 4'b1010; #10;
    // Shift Right
    sel = 2'b01; serial_in = 1; #10;
    // Shift Left
    sel = 2'b10; serial_in = 0; #10;
    // Hold
    sel = 2'b00; #10;
    $finish;
end
endmodule