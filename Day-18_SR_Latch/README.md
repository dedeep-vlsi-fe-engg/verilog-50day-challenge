# Day 18 – SR Latch Using NOR and NAND Gates (Gate-Level Modeling)

🛠️ **Tools:** Xilinx Vivado  
📘 **Modeling Style:** Gate-Level Modeling  
📁 **Folder:** Day-18_SR_Latch 
📅 **50-Day Verilog HDL Challenge**

---

## 🧠 Overview

In this day’s challenge, I implemented the **SR (Set-Reset) Latch** using both:

- **NOR gates** (Active-High Inputs)
- **NAND gates** (Active-Low Inputs)

The SR Latch is a basic memory element that stores 1-bit data. It is the building block for sequential circuits like flip-flops and registers.

---

## ✅ SR Latch Using NOR Gates

- **Active-High Inputs**
- **Q = ~(R + Qn)**  
- **Qn = ~(S + Q)**

| S | R | Q | Qn | Description |
|---|---|---|----|-------------|
| 0 | 0 | Q | Qn | Hold        |
| 1 | 0 | 1 | 0  | Set         |
| 0 | 1 | 0 | 1  | Reset       |
| 1 | 1 | X | X  | Invalid     |

---

## ✅ SR Latch Using NAND Gates

- **Active-Low Inputs**
- **Q = ~(S · Qn)**  
- **Qn = ~(R · Q)**

| S | R | Q | Qn | Description |
|---|---|---|----|-------------|
| 1 | 1 | Q | Qn | Hold        |
| 0 | 1 | 1 | 0  | Set         |
| 1 | 0 | 0 | 1  | Reset       |
| 0 | 0 | X | X  | Invalid     |

---

## 🔎 Simulation Details

- Simulated in **Vivado**
- Monitored waveforms using testbenches
- Verified Set, Reset, Hold, and Invalid conditions

---

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)