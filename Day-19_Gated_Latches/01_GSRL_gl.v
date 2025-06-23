`timescale 1ns / 1ps

module gsrl_gl(
    input S, R, En,
    output reg Q,
    output Qn
);

assign Qn = ~Q;

always @ (S or R or En) begin
    if (En) begin
        if (S == 0 && R == 0)
            Q = Q; // Hold
        else if (S == 1 && R == 0)
            Q = 1; // Set
        else if (S == 0 && R == 1)
            Q = 0; // Reset
        else
            Q = 1'bx; // Invalid
    end
end

endmodules