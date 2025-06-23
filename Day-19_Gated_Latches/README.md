# Day 19 – Gated SR and D Latch

📁 Folder: Day-19_Gated_Latches  
🧰 Tool: Xilinx Vivado  
💻 Modeling: Behavioral Verilog

---

## ✅ Gated SR Latch
- Adds `Enable (En)` signal to classic SR latch.
- Works only when En = 1.
- Responds to S (Set) and R (Reset) inputs.
- If both S and R are 1, output is invalid.

## ✅ Gated D Latch
- D (Data) latch that stores input when En = 1.
- When En = 0, Q holds previous value.
- Core part of flip-flops and registers.

---

## 🔬 Simulation Details
- Waveform verification using testbenches.
- RTL schematics generated in Vivado.

---

## 📂 Files
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
