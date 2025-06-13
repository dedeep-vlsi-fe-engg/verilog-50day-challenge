# Day 13: 1-to-8 Demultiplexer (Dataflow Modeling)

🔧 **Module Name:** `demux_1to8_df.v`  
🧪 **Testbench:** `demux_1to8_df_tb.v`  
🧠 **Modeling Style:** Dataflow

## 📝 Description

This project implements a **1-to-8 Demultiplexer** using **dataflow modeling** in Verilog HDL.  
A DEMUX takes a single input and routes it to one of several outputs based on a select line.

## ⚙️ Functionality

- **Input:** `in` (1 bit)
- **Select Lines:** `sel[2:0]` (3-bit)
- **Output:** `out[7:0]` – Only one bit will be HIGH depending on `sel`

## 💡 Key Concepts
- Dataflow modeling with conditional expressions
- Selective routing using bitwise operations
- Ideal for signal routing applications

## 🧪 Example
For `in = 1'b1` and `sel = 3'b010`, output will be:  
`out = 8'b00000100` — only bit 2 is high

📁 Folder: `Day-13_1to8_De-Multiplexer`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
