# Day 35 – 4-bit Ring Counter

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-35_Ring_Counter  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

A **4-bit Ring Counter** is implemented using a circular left shift operation.  
- It begins with only the LSB set to `1` on reset.
- With every clock pulse, the `1` shifts left.
- After MSB, the `1` wraps back to LSB — forming a ring.

### Sequence:
`0001 → 0010 → 0100 → 1000 → 0001 → ...`

This type of counter is commonly used in:
- Finite state machines
- Digital sequence generation
- Traffic light systems

---

## 🧪 Simulation

- 10ns clock
- Reset initializes to `0001`
- Observe 4-cycle ring repeat in waveform

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
