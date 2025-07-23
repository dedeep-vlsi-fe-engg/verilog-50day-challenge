`timescale 1ns / 1ps
module code_converter(
    input [2:0] mode,
    input [3:0] data_in,
    output reg [3:0] data_out,
    output reg valid
);

// Function to convert binary to gray
function [3:0] bin_to_gray;
    input [3:0] bin;
    begin
        bin_to_gray[3] = bin[3];
        bin_to_gray[2] = bin[3] ^ bin[2];
        bin_to_gray[1] = bin[2] ^ bin[1];
        bin_to_gray[0] = bin[1] ^ bin[0];
    end
endfunction

// Function to convert gray to binary
function [3:0] gray_to_bin;
    input [3:0] gray;
    begin
        gray_to_bin[3] = gray[3];
        gray_to_bin[2] = gray[3] ^ gray[2];
        gray_to_bin[1] = gray_to_bin[2] ^ gray[1];
        gray_to_bin[0] = gray_to_bin[1] ^ gray[0];
    end
endfunction

// Function to convert binary to BCD (valid for 0-9)
function [3:0] bin_to_bcd;
    input [3:0] bin;
    begin
        if (bin <= 4'd9)
            bin_to_bcd = bin;
        else
            bin_to_bcd = 4'b0000; // Invalid input
    end
endfunction

// Function to convert BCD to Excess-3
function [3:0] bcd_to_excess3;
    input [3:0] bcd;
    begin
        if (bcd <= 4'd9)
            bcd_to_excess3 = bcd + 4'd3;
        else
            bcd_to_excess3 = 4'b0000; // Invalid input
    end
endfunction

// Function to convert binary to Excess-3
function [3:0] bin_to_excess3;
    input [3:0] bin;
    begin
        if (bin <= 4'd9)
            bin_to_excess3 = bin + 4'd3;
        else
            bin_to_excess3 = 4'b0000; // Invalid input
    end
endfunction

// Function to convert Excess-3 to binary
function [3:0] excess3_to_bin;
    input [3:0] excess3;
    begin
        if (excess3 >= 4'd3 && excess3 <= 4'd12)
            excess3_to_bin = excess3 - 4'd3;
        else
            excess3_to_bin = 4'b0000; // Invalid input
    end
endfunction

// Function to convert Excess-3 to BCD
function [3:0] excess3_to_bcd;
    input [3:0] excess3;
    begin
        if (excess3 >= 4'd3 && excess3 <= 4'd12)
            excess3_to_bcd = excess3 - 4'd3;
        else
            excess3_to_bcd = 4'b0000; // Invalid input
    end
endfunction

// Function to convert BCD to binary
function [3:0] bcd_to_bin;
    input [3:0] bcd;
    begin
        if (bcd <= 4'd9)
            bcd_to_bin = bcd;
        else
            bcd_to_bin = 4'b0000; // Invalid input
    end
endfunction

always @(*) begin
    valid = 1'b1; // Assume valid output initially
    
    case (mode)
        3'b000: begin // Binary to Gray Code
            data_out = bin_to_gray(data_in);
        end
        
        3'b001: begin // Gray to Binary
            data_out = gray_to_bin(data_in);
        end
        
        3'b010: begin // Binary to BCD (Valid for 0–9)
            if (data_in <= 4'd9) begin
                data_out = bin_to_bcd(data_in);
            end else begin
                data_out = 4'b0000;
                valid = 1'b0;
            end
        end
        
        3'b011: begin // BCD to Excess-3
            if (data_in <= 4'd9) begin
                data_out = bcd_to_excess3(data_in);
            end else begin
                data_out = 4'b0000;
                valid = 1'b0;
            end
        end
        
        3'b100: begin // Binary to Excess-3
            if (data_in <= 4'd9) begin
                data_out = bin_to_excess3(data_in);
            end else begin
                data_out = 4'b0000;
                valid = 1'b0;
            end
        end
        
        3'b101: begin // Excess-3 to Binary
            if (data_in >= 4'd3 && data_in <= 4'd12) begin
                data_out = excess3_to_bin(data_in);
            end else begin
                data_out = 4'b0000;
                valid = 1'b0;
            end
        end
        
        3'b110: begin // Excess-3 to BCD
            if (data_in >= 4'd3 && data_in <= 4'd12) begin
                data_out = excess3_to_bcd(data_in);
            end else begin
                data_out = 4'b0000;
                valid = 1'b0;
            end
        end
        
        3'b111: begin // BCD to Binary
            if (data_in <= 4'd9) begin
                data_out = bcd_to_bin(data_in);
            end else begin
                data_out = 4'b0000;
                valid = 1'b0;
            end
        end
        
        default: begin
            data_out = 4'b0000;
            valid = 1'b0;
        end
    endcase
end

endmodule