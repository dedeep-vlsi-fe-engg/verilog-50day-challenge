# Day 46 – Booth Multiplier

📅 Verilog 50-Day HDL Challenge  
📂 Folder: Day-46_Booth_Multiplier

---

## 🧮 Project Description

This project implements a **4x4 Booth Multiplier** using basic **half adders** and **full adders** in Verilog HDL. Booth’s algorithm is a more efficient method for multiplying binary numbers, especially signed numbers, by reducing the number of additions required.

---

## 🔧 Features

- Supports signed 4-bit inputs
- Efficient multiplication using Booth encoding logic
- Output is an 8-bit product
- Modular design with clean separation of half adder, full adder, and multiplier logic
- Designed and simulated using **Xilinx Vivado**

---

## 📘 Modules Used

- `half_adder`: Computes single-bit sum and carry
- `full_adder`: Handles carry-in along with two input bits
- `booth_multiplier`: Main module computing the product of two 4-bit signed numbers

## 📁 Files

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge)
