`timescale 1ns/1ps

module tlc_tb;
reg clk, rst;
wire red, yellow, green;

tlc uut (.clk(clk), .rst(rst), .red(red), .yellow(yellow), .green(green));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1; #10;
    rst = 0;

    // Run for a few clock cycles
    #100;

    $finish;
end

endmodule