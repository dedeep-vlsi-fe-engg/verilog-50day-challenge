# Day 24 – Serial-In Parallel-Out (SIPO) Register

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-24_SIPO_Register  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

This module implements a **Serial-In Parallel-Out (SIPO) shift register**, where a 1-bit input is shifted into a 4-bit register on each clock cycle.

🟢 `data_in` is sampled on the rising edge of `clk`  
🔁 Output `data_out` holds the last 4 serial bits in parallel form  
🔁 SIPO is widely used in UART, SPI, shift buffers

---

## 🧪 Simulation

Simulation confirms correct shift behavior using Vivado waveform.

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
