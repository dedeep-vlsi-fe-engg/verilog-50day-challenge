# 🧮 Verilog HDL - Arithmetic Calculator (Day 48)

### 📅 Project: Day 48 of 50-Day Verilog HDL Challenge  
### 📁 Folder: `Day-48_Verilog_Arithmetic_Calculator`  
### 💻 Tool: Xilinx Vivado

---

## 📌 Overview

This project implements an **8-bit Verilog-based Arithmetic Calculator** that supports **signed and unsigned** operations with **mode selection**.  
It performs all basic arithmetic operations and includes intelligent error handling for **overflow** and **divide-by-zero** cases.

---

## ⚙️ Design Features

- 🔢 **Operations**:
  - `Mode 00`: Addition (`A + B`)
  - `Mode 01`: Subtraction (`A - B`)
  - `Mode 10`: Multiplication (`A × B`)
  - `Mode 11`: Division (`A ÷ B`)

- ✅ **16-bit result** to handle large outputs from multiplication.
- ✅ **Signed / Unsigned mode** using `signed_operation` control bit.
- 🚫 **Overflow detection** for both signed & unsigned addition, subtraction, multiplication.
- ❗ **Division by Zero protection**: Sets error flag `divide_by_zero`.
- 🧠 **Valid output signal** ensures the result is reliable.
- 🧮 Operands: `operand_a` and `operand_b` – 8 bits each

---

## 🧠 Truth Table (Operation Modes)

| Mode | Operation | signed_op | Description             |
|------|-----------|-----------|-------------------------|
| 00   | A + B     | 0 or 1    | Signed or Unsigned Add  |
| 01   | A - B     | 0 or 1    | Signed or Unsigned Sub  |
| 10   | A × B     | 0 or 1    | Signed or Unsigned Mul  |
| 11   | A ÷ B     | 0 or 1    | Signed or Unsigned Div  |

---

## 📂 Files

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
