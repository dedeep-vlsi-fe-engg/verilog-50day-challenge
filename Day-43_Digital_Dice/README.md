# Day 43 – Simple Digital Dice 🎲

📅 Verilog 50-Day HDL Challenge  
📂 Folder: Day-43_Simple_Digital_Dice

---

## 🕹️ Project Description

This project implements a **Simple Digital Dice** using Verilog HDL. On each trigger (simulated as a button or pulse), the dice "rolls" a number between **1 and 6**, wrapping around cyclically.

---

## 🔧 Features:
- 3-bit binary output representing dice values (1 to 6)
- Resets to 1 on reset signal
- Rolls to next value (2 → 3 → … → 6 → 1)
- Testbench demonstrates multiple rolls

---

## 🧪 Testbench
- Uses a simulated roll signal (10 roll cycles)
- Verifies proper counting and reset

---

## 🧾 Files:
- `digital_dice.v` – Verilog module
- `digital_dice_tb.v` – Testbench file
---

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
