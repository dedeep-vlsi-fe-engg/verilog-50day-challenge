module mod5_beh (
    input clk,
    input rst,
    output reg [2:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 3'b000;
    else if (q == 3'b100)  // 5 in binary
        q <= 3'b000;
    else
        q <= q + 1;
end

endmodule