## 🔢 Project Title: Universal Number Base Converter using Verilog HDL
📅 Challenge Day: 50 of 50

## 📌 Project Description:
This Verilog-based design implements a Universal Number Base Converter capable of converting numbers between various common radix systems such as Binary, Decimal (BCD), Octal, and Hexadecimal. The module is controlled by a 3-bit mode input, selecting from 8 conversion modes.

## 🎯 Supported Conversion Modes:
Mode (3-bit)	Conversion	Description
- 000	Hex → Decimal	Hex value to Packed BCD
- 001	Binary → Decimal	Binary value to Packed BCD
- 010	Decimal → Binary	Packed BCD to Binary
- 011	Decimal → Hex	Packed BCD to Hex value
- 100	Binary → Hex	Binary value to Hex
- 101	Hex → Binary	Hex value to Binary
- 110	Octal → Decimal	Packed Octal to Packed BCD
- 111	Decimal → Octal	Packed BCD to Packed Octal

## 🧠 Data Representation
. Packed BCD: Each nibble (4 bits) encodes one decimal digit (0–9)
> Packed Binary: Each nibble represents a binary bit (0 or 1)
> Packed Octal: Each nibble represents an octal digit (0–7)
> Hex/Binary: Direct 16-bit inputs are used

## ⚙️ Inputs & Outputs
> Inputs:
mode[2:0] – selects the conversion mode
in_data[15:0] – 16-bit input value

> Outputs:
out_data[15:0] – converted output
valid – high if input is valid
error – high if invalid digits or overflow occurs

## ✅ Features
✔️ 8 inbuilt conversion modes
✔️ Input validation for digit limits
✔️ Overflow detection
✔️ Compatible with testbenches
✔️ Designed for FPGA simulation or RTL emulation

## 📂 Files

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
