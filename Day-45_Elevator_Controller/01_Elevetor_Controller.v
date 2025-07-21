`timescale 1ns / 1ps

module elevator_controller (
    input clk,
    input reset,
    input [2:0] req,
    output reg [1:0] current_floor,
    output reg direction,
    output reg door
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            current_floor <= 2'd0;
            direction <= 1'b1; // Default UP
            door <= 1'b0;
        end else begin
            door <= 1'b0;

            case (current_floor)
                2'd0: begin
                    if (req[1] || req[2]) begin
                        current_floor <= current_floor + 1;
                        direction <= 1'b1;
                    end else if (req[0]) begin
                        door <= 1'b1;
                    end
                end

                2'd1: begin
                    if (req[2]) begin
                        current_floor <= current_floor + 1;
                        direction <= 1'b1;
                    end else if (req[0]) begin
                        current_floor <= current_floor - 1;
                        direction <= 1'b0;
                    end else if (req[1]) begin
                        door <= 1'b1;
                    end
                end

                2'd2: begin
                    if (req[1] || req[0]) begin
                        current_floor <= current_floor - 1;
                        direction <= 1'b0;
                    end else if (req[2]) begin
                        door <= 1'b1;
                    end
                end

                default: current_floor <= 2'd0;
            endcase
        end
    end
endmodule