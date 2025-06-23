`timescale 1ns / 1ps

module gdl_gl_tb;
reg D, En;
wire Q;

gdl_gl uut (.D(D), .En(En), .Q(Q));

initial begin
    En = 0; D = 0; #10;
    En = 1; D = 1; #10;
    En = 0; D = 0; #10;
    En = 1; D = 0; #10;
    $finish;
end

endmodule