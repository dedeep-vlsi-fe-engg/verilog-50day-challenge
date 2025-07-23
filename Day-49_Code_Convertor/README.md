# 🔢 Universal Code Converter – Verilog HDL

## 📅 Day 49 of Verilog HDL 50-Day Challenge  
This Verilog project implements a **Universal Code Converter**, capable of converting between multiple digital code formats like Binary, Gray, BCD, and Excess-3. It is controlled via a **3-bit mode selector**, allowing dynamic switching between various conversions.

---

## 🚀 Features
- 8 different conversion modes based on `mode` input:
  - `000`: Binary → Gray Code
  - `001`: Gray Code → Binary
  - `010`: Binary → BCD (for 0–9)
  - `011`: BCD → Excess-3
  - `100`: Binary → Excess-3
  - `101`: Excess-3 → Binary
  - `110`: Excess-3 → BCD
  - `111`: BCD → Binary
- Real-time switching using a single control signal.
- 4-bit input, 8-bit output with zero-padded formatting.
- Modular, readable, and synthesizable code.
- Suitable for FPGA/ASIC implementation.

---

## 🧠 Design Description

### 🧩 Inputs:
- `binary_in[3:0]` : 4-bit data input
- `mode[2:0]` : 3-bit control signal to select conversion type

### 🎯 Output:
- `converted_out[7:0]` : Converted 8-bit result based on selected mode

---

## 🛠 Tools Used
- **HDL**: Verilog
- **Simulation**: Xilinx Vivado / ModelSim
- **Target (optional)**: Xilinx Spartan / Nexys A7 FPGA

---

## 🧪 Testbench Features
- Validates all 8 modes with example inputs.
- Displays binary and result in each mode.
- Identifies invalid conditions like out-of-range BCD.
- Easy to extend and modify for additional conversions.

---

## ✅ Example Output (Simulation)

| Mode (3-bit) | Description             | Input (`binary_in`) | Output (`converted_out`) |
|--------------|--------------------------|----------------------|---------------------------|
| `000`        | Binary → Gray            | `4'b1010`            | `8'b1111_1111`            |
| `001`        | Gray → Binary            | `4'b1101`            | `8'b0000_1011`            |
| `010`        | Binary → BCD (0–9)       | `4'b0101`            | `8'b0000_0101`            |
| `011`        | BCD → Excess-3           | `4'b0101`            | `8'b0000_1000`            |
| `100`        | Binary → Excess-3        | `4'b0101`            | `8'b0000_1000`            |
| `101`        | Excess-3 → Binary        | `4'b1000`            | `8'b0000_0101`            |
| `110`        | Excess-3 → BCD           | `4'b1000`            | `8'b0000_0101`            |
| `111`        | BCD → Binary             | `4'b0101`            | `8'b0000_0101`            |

---

## 📂 Files

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
