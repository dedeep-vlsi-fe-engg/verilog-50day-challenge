module rng (
    input clk,
    input rst,
    input enable,
    output reg [3:0] digit
);

    reg [3:0] lfsr;

    always @(posedge clk or posedge rst) begin
        if (rst)
            lfsr <= 4'b1011;  // Seed value (non-zero)
        else if (enable) begin
            // LFSR with taps at bit 3 and bit 2 (x^4 + x^3 + 1)
            lfsr <= {lfsr[2:0], lfsr[3] ^ lfsr[2]};
        end
    end

    // Modulo-10 mapping to get digits from 0–9
    always @(*) begin
        digit = lfsr % 10;
    end

endmodule