# Day 36 – 4-bit Johnson (Twisted Ring) Counter

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-36_Johnson_Counter  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

A **Johnson Counter** is a twisted ring counter built using a shift register:
- Feedback is taken as the **inverted LSB** and fed into the MSB.
- Produces `2n` unique states with `n` flip-flops.
- Ideal for sequence generators and timing circuits.

### 4-bit Sequence:
0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → 0000 → ...

## 🧪 Simulation

- Clock period = 10ns
- Reset initializes to `0000`
- Simulated for 10 cycles to show full 8-state sequence

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
