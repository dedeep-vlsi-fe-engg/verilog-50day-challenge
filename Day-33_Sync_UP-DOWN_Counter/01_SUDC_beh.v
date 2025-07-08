module sudc_beh (
    input clk,
    input rst,
    input up_down,         // 1 = up, 0 = down
    output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;
    else if (up_down)
        q <= q + 1;
    else
        q <= q - 1;
end

endmodule