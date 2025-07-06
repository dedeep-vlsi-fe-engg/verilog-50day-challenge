module audc_beh (
    input clk,
    input rst,
    input up_down,         // 1 = up, 0 = down
    output [3:0] q
);
    wire [3:0] q_internal;

    // Toggle flip-flops with conditional clocking
    T_FF t0 (.clk(clk),                  .rst(rst), .q(q_internal[0]));
    T_FF t1 (.clk(up_down ? q_internal[0] : ~q_internal[0]), .rst(rst), .q(q_internal[1]));
    T_FF t2 (.clk(up_down ? q_internal[1] : ~q_internal[1]), .rst(rst), .q(q_internal[2]));
    T_FF t3 (.clk(up_down ? q_internal[2] : ~q_internal[2]), .rst(rst), .q(q_internal[3]));

    assign q = q_internal;
endmodule

// T Flip-Flop Module
module T_FF (
    input clk,
    input rst,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else
            q <= ~q;
    end
endmodule