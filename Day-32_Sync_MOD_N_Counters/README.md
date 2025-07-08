# Day 32 – Synchronous Mod-6 and Mod-10 Counters

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-32_Synchronous_ModN_Counters  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral (Synchronous)

---

## ✅ Description

This project includes two synchronous up counters:

### 🔹 Mod-6 Counter (3-bit)
- Counts from 0 to 5
- Resets to 0 after reaching 5

### 🔸 Mod-10 Counter (4-bit)
- Also called **Decade Counter**
- Counts from 0 to 9
- Resets to 0 after reaching 9

Each design uses `posedge clk` to trigger counter changes.

---

## 🧪 Simulation

- Clock: 10ns
- Reset applied initially
- Output transitions are synchronized with the clock edge
- Waveform shows Mod-6 and Mod-10 loops correctly

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
