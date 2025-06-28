# Day 23 – Parallel-In Serial-Out (PISO) Register

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-23_PISO_Register  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

This project implements a **Parallel-In Serial-Out (PISO) shift register**, where 4-bit parallel data is loaded and then shifted out bit-by-bit on each clock cycle.

🟢 When `load = 1`: Register is loaded with `data_in`  
🔁 When `load = 0`: Most significant bit is output and data is shifted left

Used in:
- Serial communication
- Data serialization
- Digital interfacing

---

## 🧪 Simulation

Testbench verifies loading and bit-by-bit output.  
Vivado simulation confirms correct PISO functionality.

---

## 📂 Files Included
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
