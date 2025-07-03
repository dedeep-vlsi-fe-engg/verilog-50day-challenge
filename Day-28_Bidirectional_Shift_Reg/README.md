# Day 28 – Bidirectional Shift Register (4-bit)

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-28_Bidirectional_Shift_Register  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

This Verilog module implements a **4-bit bidirectional shift register**. It supports:
- 🔁 Shift Left
- 🔁 Shift Right

Operation is determined by a single direction control line:
- `dir = 0`: Shift Right
- `dir = 1`: Shift Left

The serial input bit is inserted accordingly and all operations are edge-triggered.

---

## 🧪 Simulation

The testbench validates shifting in both directions and shows changes in output `data_out` per clock cycle.

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
