`timescale 1ns / 1ps

module gdl_gl(
    input D,
    input En,
    output reg Q
);

always @ (D or En) begin
    if (En)
        Q = D;
    // else hold previous value
end

endmodule