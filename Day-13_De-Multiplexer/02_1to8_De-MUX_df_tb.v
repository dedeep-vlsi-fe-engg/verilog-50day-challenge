`timescale 1ns / 1ps

module demux_1to8_df_tb;
    reg in;
    reg [2:0] sel;
    wire [7:0] out;

    demux_1to8_df uut (.in(in), .sel(sel), .out(out));

    initial begin
        in = 1'b1;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $finish;
    end

endmodule