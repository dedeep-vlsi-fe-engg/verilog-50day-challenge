`timescale 1ns/1ps
module digital_lock_tb;
    reg [3:0] code;
    reg reset;
    wire unlock;

    digital_lock_system uut (.code(code), .reset(reset), .unlock(unlock));

    initial begin
        // Initially reset
        reset = 1; code = 4'b0000; #10;

        // Try wrong password after reset
        reset = 0; code = 4'b1100; #10;

        // Try correct password
        code = 4'b1010; #10;

        // Try wrong password again
        code = 4'b0011; #10;

        // Reset again
        reset = 1; #10;

        $finish;
    end
endmodule