# Day 31 – 4-bit Asynchronous Up/Down Counter

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-31_Asynchronous_UpDown_Counter  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral + Gate-level T Flip-Flops

---

## ✅ Description

This project implements a **4-bit asynchronous up/down counter** using **T flip-flops** and conditional clock routing.

- `up_down = 1` → Up counter  
- `up_down = 0` → Down counter  

Each flip-flop is triggered by the output (`q` or `~q`) of the previous one, depending on the direction.

---

## 🔧 Features

- Asynchronous reset (`rst`)
- Direction control using `up_down` input
- 4-bit binary output

---

## 🧪 Simulation

Testbench:
- Starts with reset
- Simulates up-counting and then switches to down-counting

Result:
- Clean waveform shows transition from up to down and back to up.

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
