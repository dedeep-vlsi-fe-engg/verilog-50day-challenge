`timescale 1ns / 1ps

module msjkff_gl(
    input J,
    input K,
    input clk,
    output reg Q,
    output Qn
);
reg master;
assign Qn = ~Q;

always @(negedge clk) begin
    case ({J, K})
        2'b00: master <= Q;       // Hold
        2'b01: master <= 0;       // Reset
        2'b10: master <= 1;       // Set
        2'b11: master <= ~Q;      // Toggle
    endcase
end

always @(posedge clk) begin
    Q <= master; // Slave updates on rising edge
end

endmodule