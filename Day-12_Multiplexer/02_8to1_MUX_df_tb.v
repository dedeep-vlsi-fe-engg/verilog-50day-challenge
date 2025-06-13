`timescale 1ns / 1ps

module mux_8to1_df_tb;
    reg [7:0] in;
    reg [2:0] sel;
    wire out;

    mux_8to1_df uut (.in(in), .sel(sel), .out(out));

    initial begin
        in = 8'b10101010;

        sel = 3'b000; #10;  // out = in[0] = 0
        sel = 3'b001; #10;  // out = in[1] = 1
        sel = 3'b010; #10;  // out = in[2] = 0
        sel = 3'b011; #10;  // out = in[3] = 1
        sel = 3'b100; #10;  // out = in[4] = 0
        sel = 3'b101; #10;  // out = in[5] = 1
        sel = 3'b110; #10;  // out = in[6] = 0
        sel = 3'b111; #10;  // out = in[7] = 1

        $finish;
    end

endmodule