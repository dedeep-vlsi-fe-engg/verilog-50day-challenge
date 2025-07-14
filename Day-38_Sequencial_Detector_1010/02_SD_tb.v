`timescale 1ns/1ps

module seq_1010_detector_tb;
reg clk, rst, in;
wire detected;

seq_1010_detector uut (.clk(clk), .rst(rst), .in(in), .detected(detected));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1; #10;
    rst = 0;

    // Input pattern: 110101010 -> detect 1010 at 6-9
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 0; #10; // should detect here
    in = 1; #10;
    in = 0; #10; // detect again (overlapping)
    $finish;
end

endmodule