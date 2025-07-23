`timescale 1ns / 1ps

module digital_lock_system(
    input [3:0] code,
    input reset,
    output reg unlock
);
    parameter [3:0] PASSWORD = 4'b1010;

    always @(*) begin
        if (reset)
            unlock = 0;
        else if (code == PASSWORD)
            unlock = 1;
        else
            unlock = 0;
    end
endmodule
