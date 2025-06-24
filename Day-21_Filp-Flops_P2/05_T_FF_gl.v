`timescale 1ns / 1ps

module tff_gl(
    input T,
    input clk,
    output reg Q,
    output Qn
);
initial Q = 0;
assign Qn = ~Q;

always @(posedge clk) begin
    if (T)
        Q <= ~Q; // Toggle
    else
        Q <= Q;  // Hold
end

endmodule