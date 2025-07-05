# Day 29 – Ripple Up and Down Counters

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-29_Ripple_Counters  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

This project includes two asynchronous (ripple) counters:

### ➕ 4-bit Ripple Up Counter
- Cascaded T flip-flops
- Counts from 0000 to 1111

### ➖ 4-bit Ripple Down Counter
- Same structure, inverted clock
- Counts from 1111 to 0000

Both counters use a reset signal to initialize outputs to zero.

---

## 🧪 Simulation

Testbench applies clock and reset signals to both counters simultaneously. Outputs are monitored and compared in waveforms.

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
