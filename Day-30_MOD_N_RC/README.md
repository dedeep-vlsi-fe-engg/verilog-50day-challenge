# Day 30 – Mod-5 and Mod-10 Ripple Counters

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-30_Mod-N_Ripple_Counters  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral (Asynchronous)

---

## ✅ Description

This day includes two asynchronous Mod-N counters:

### 🔹 Mod-5 Ripple Counter
- 3-bit counter
- Counts: 000 → 001 → 010 → 011 → 100 → 000 ...

### 🔸 Mod-10 Ripple Counter (Decade Counter)
- 4-bit counter
- Counts: 0000 → 0001 → ... → 1001 → 0000

Each counter resets when it reaches its maximum modulus value.

---

## 🧪 Simulation

A testbench drives a 10ns clock and applies reset. Both counters are observed together.  
**Simulation waveform** shows each wrapping correctly.

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
