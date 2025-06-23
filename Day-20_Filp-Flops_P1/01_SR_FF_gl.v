module srff_gl (
    input S,
    input R,
    input clk,
    output reg Q,
    output Qn
);

assign Qn = ~Q;

always @(posedge clk) begin
    if (S == 0 && R == 0)
        Q <= Q;       // Hold
    else if (S == 1 && R == 0)
        Q <= 1;       // Set
    else if (S == 0 && R == 1)
        Q <= 0;       // Reset
    else
        Q <= 1'bx;    // Invalid
end

endmodule