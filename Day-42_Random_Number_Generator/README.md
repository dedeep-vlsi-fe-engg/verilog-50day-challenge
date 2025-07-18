# Day 42 – Random Simple Digit Generator

📅 **Verilog 50-Day HDL Challenge**  
📁 **Folder:** `Day-42_Random_Simple_Digit_Generator`

---

## 🔢 Project Description

This project simulates a **Random Digit Generator** using a 4-bit Linear Feedback Shift Register (LFSR). It generates digits from **0 to 9** by taking a modulo-10 of the LFSR output. This kind of generator is useful in digital dice, simple games, and learning applications.

---

## 🔧 Features

- Pseudo-random digit output between 0 and 9
- 4-bit LFSR logic with taps at bit 3 and bit 2
- Digit output computed using modulo operation (`% 10`)
- Fully testbenched with repeatable simulation
- Implemented using **Xilinx Vivado**

---

## 🧠 Logic Overview

- **LFSR Taps:** Feedback from `bit[3]` XOR `bit[2]`
- **Seed Value:** 4'b1011 (non-zero to avoid lock)
- **Randomness Source:** Hardware simulation clock cycles
- **Output Digit:** `digit = lfsr % 10`

---

## 🧪 Testbench Summary

- Runs for 20 cycles with `enable = 1`
- Monitors random digit output
- Simulation clock: 10ns period (100 MHz)
- `$display` shows the digit during each iteration

---

## 📄 Files 

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
