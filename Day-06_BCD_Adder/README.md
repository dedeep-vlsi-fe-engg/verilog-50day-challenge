## Day 6 – BCD Adder

On Day 6 of my Verilog 50-Day Challenge, I implemented a **BCD Adder (Binary Coded Decimal)** using **dataflow modeling**.

### 🧮 What is a BCD Adder?
A BCD adder performs the addition of two decimal digits (0–9), each represented in 4-bit binary. If the result exceeds 9 (1001), the sum is corrected by adding 6 (0110) to bring it back into valid BCD range.

### 🔧 Module Details:
- Inputs: `a`, `b` (4-bit BCD), and `cin`
- Outputs: `sum` (intermediate), `bcd_sum` (corrected output), `cout` (carry if sum > 9)
- Correction Logic: If sum > 9, then add 6 to correct it.

### 🔬 Testing:
Tested various cases including valid and overflow cases using Vivado. Waveform verified.

📁 Folder: `Day-6_BCD_Adder`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)

BCD Adders are essential for decimal arithmetic in calculators, digital clocks, and financial computing.
