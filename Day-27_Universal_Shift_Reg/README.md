# Day 27 – Universal Shift Register (4-bit)

📅 50-Day Verilog HDL Challenge  
📁 Folder: Day-27_Universal_Shift_Register  
🛠️ Tool: Xilinx Vivado  
✍️ Modeling Style: Behavioral

---

## ✅ Description

The **Universal Shift Register** is a versatile 4-bit register that can perform:
- 🟡 Hold
- 🔁 Shift Right
- 🔁 Shift Left
- 📥 Parallel Load

Operation is controlled via 2-bit select input (`sel`):
- `00`: Hold
- `01`: Shift Right (serial in on MSB)
- `10`: Shift Left (serial in on LSB)
- `11`: Parallel Load

---

## 🧪 Simulation

Verified using a testbench that covers all 4 operations.  
Vivado waveform confirms functionality.

---

## 📂 Files Included

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
