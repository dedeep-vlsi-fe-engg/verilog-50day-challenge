## Day 5 – 4-bit Carry Look-Ahead Adder (Dataflow)

On Day 5 of my Verilog 50-Day Challenge, I implemented a **4-bit Carry Look-Ahead Adder (CLA)** using **dataflow modeling**.

### ⚡ Why CLA?
Unlike Ripple Carry Adders, CLA computes the carry signals in parallel using generate and propagate logic. This significantly speeds up the addition process, especially in high-performance ALUs.

### 🔧 Design Highlights:
- Inputs: `a`, `b` (4-bit), and `cin`
- Outputs: `sum` (4-bit) and `cout`
- Logic: 
  - `p = a ^ b` (propagate)
  - `g = a & b` (generate)
  - Carry signals are computed using Boolean expressions
- Sum is calculated as: `sum = p ^ carry`

### 🔬 Testing:
Tested using a variety of input combinations to verify correctness of both sum and carry-out. Simulation and waveform checked in Vivado.

📂 Folder: `Day-5_CLA_Adder`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)

This module is an important milestone in understanding **fast arithmetic circuits** and plays a role in ALUs and CPUs.

