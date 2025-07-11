module rc_beh (
    input clk,
    input rst,
    output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0001;
    else
        q <= {q[2:0], q[3]};  // Left circular shift
end

endmodule