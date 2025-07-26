module base_converter(
    input [2:0] mode,           // 3-bit mode selection
    input [15:0] data_in,       // 16-bit input data
    output reg [15:0] data_out, // 16-bit output data
    output reg valid            // Valid output flag
);

// Internal variables
reg [15:0] bin_value;
reg [15:0] temp_value;

// Function to check if hex digit is valid (0-F)
function is_valid_hex_digit;
    input [3:0] digit;
    begin
        is_valid_hex_digit = (digit <= 4'hF);
    end
endfunction

// Function to check if binary digit is valid (0-1)
function is_valid_bin_digit;
    input [3:0] digit;
    begin
        is_valid_bin_digit = (digit <= 4'h1);
    end
endfunction

// Function to check if decimal digit is valid (0-9)
function is_valid_dec_digit;
    input [3:0] digit;
    begin
        is_valid_dec_digit = (digit <= 4'h9);
    end
endfunction

// Function to check if octal digit is valid (0-7)
function is_valid_oct_digit;
    input [3:0] digit;
    begin
        is_valid_oct_digit = (digit <= 4'h7);
    end
endfunction

// Function to check if packed BCD is valid decimal
function is_valid_packed_decimal;
    input [15:0] bcd_data;
    begin
        is_valid_packed_decimal = is_valid_dec_digit(bcd_data[3:0]) &&
                                  is_valid_dec_digit(bcd_data[7:4]) &&
                                  is_valid_dec_digit(bcd_data[11:8]) &&
                                  is_valid_dec_digit(bcd_data[15:12]);
    end
endfunction

// Function to check if packed BCD is valid octal
function is_valid_packed_octal;
    input [15:0] oct_data;
    begin
        is_valid_packed_octal = is_valid_oct_digit(oct_data[3:0]) &&
                                is_valid_oct_digit(oct_data[7:4]) &&
                                is_valid_oct_digit(oct_data[11:8]) &&
                                is_valid_oct_digit(oct_data[15:12]);
    end
endfunction

// Function to check if packed binary digits are valid
function is_valid_packed_binary;
    input [15:0] bin_data;
    begin
        is_valid_packed_binary = is_valid_bin_digit(bin_data[3:0]) &&
                                 is_valid_bin_digit(bin_data[7:4]) &&
                                 is_valid_bin_digit(bin_data[11:8]) &&
                                 is_valid_bin_digit(bin_data[15:12]);
    end
endfunction

// Function to convert packed BCD to binary
function [15:0] packed_bcd_to_binary;
    input [15:0] bcd;
    begin
        packed_bcd_to_binary = (bcd[15:12] * 1000) + (bcd[11:8] * 100) + 
                               (bcd[7:4] * 10) + bcd[3:0];
    end
endfunction

// Function to convert binary to packed BCD
function [15:0] binary_to_packed_bcd;
    input [15:0] bin;
    begin
        if (bin > 9999) begin
            binary_to_packed_bcd = 16'h0000;
        end else begin
            binary_to_packed_bcd[3:0]   = bin % 10;
            binary_to_packed_bcd[7:4]   = (bin / 10) % 10;
            binary_to_packed_bcd[11:8]  = (bin / 100) % 10;
            binary_to_packed_bcd[15:12] = (bin / 1000) % 10;
        end
    end
endfunction

// Function to convert packed octal to binary
function [15:0] packed_octal_to_binary;
    input [15:0] oct;
    begin
        packed_octal_to_binary = (oct[15:12] * 512) + (oct[11:8] * 64) + 
                                 (oct[7:4] * 8) + oct[3:0];
    end
endfunction

// Function to convert binary to packed octal
function [15:0] binary_to_packed_octal;
    input [15:0] bin;
    begin
        if (bin > 32767) begin
            binary_to_packed_octal = 16'h0000;
        end else begin
            binary_to_packed_octal[3:0]   = bin % 8;
            binary_to_packed_octal[7:4]   = (bin / 8) % 8;
            binary_to_packed_octal[11:8]  = (bin / 64) % 8;
            binary_to_packed_octal[15:12] = (bin / 512) % 8;
        end
    end
endfunction

// Function to convert packed binary digits to decimal value
function [15:0] packed_binary_to_decimal;
    input [15:0] bin_digits;
    begin
        packed_binary_to_decimal = (bin_digits[15:12] * 1000) + (bin_digits[11:8] * 100) + 
                                   (bin_digits[7:4] * 10) + bin_digits[3:0];
    end
endfunction

always @(*) begin
    valid = 1'b1;
    data_out = 16'h0000;
    
    case (mode)
        3'b000: begin // Hex to Dec
            if (data_in <= 16'd9999) begin
                data_out = binary_to_packed_bcd(data_in);
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b001: begin // Bin to Dec
            if (is_valid_packed_binary(data_in)) begin
                bin_value = packed_binary_to_decimal(data_in);
                data_out = binary_to_packed_bcd(bin_value);
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b010: begin // Dec to Bin
            if (is_valid_packed_decimal(data_in)) begin
                data_out = packed_bcd_to_binary(data_in);
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b011: begin // Dec to Hex
            if (is_valid_packed_decimal(data_in)) begin
                data_out = packed_bcd_to_binary(data_in);
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b100: begin // Bin to Hex
            if (is_valid_packed_binary(data_in)) begin
                data_out = packed_binary_to_decimal(data_in);
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b101: begin // Hex to Bin
            if (data_in <= 16'd1111) begin
                temp_value = binary_to_packed_bcd(data_in);
                if (is_valid_packed_binary(temp_value)) begin
                    data_out = temp_value;
                end else begin
                    valid = 1'b0;
                end
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b110: begin // Oct to Dec
            if (is_valid_packed_octal(data_in)) begin
                bin_value = packed_octal_to_binary(data_in);
                if (bin_value <= 9999) begin
                    data_out = binary_to_packed_bcd(bin_value);
                end else begin
                    valid = 1'b0;
                end
            end else begin
                valid = 1'b0;
            end
        end
        
        3'b111: begin // Dec to Oct
            if (is_valid_packed_decimal(data_in)) begin
                bin_value = packed_bcd_to_binary(data_in);
                data_out = binary_to_packed_octal(bin_value);
            end else begin
                valid = 1'b0;
            end
        end
        
        default: valid = 1'b0;
    endcase
end

endmodule