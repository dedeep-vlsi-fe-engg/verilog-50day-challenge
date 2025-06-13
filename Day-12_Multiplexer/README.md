# Day 12: 8-to-1 Multiplexer (Dataflow Modeling)

🔧 **Module Name:** `mux_8to1_df.v`  
🧪 **Testbench:** `mux_8to1_df_tb.v`  
🧠 **Modeling Style:** Dataflow

## 📝 Description

This module implements an **8-to-1 Multiplexer (MUX)** using **dataflow modeling** in Verilog HDL.  
A multiplexer selects one of several input signals and forwards the selected input to a single output line.

## ⚙️ Functionality

- **Inputs:** 8-bit input data (`in[7:0]`)  
- **Select Lines:** 3-bit selector (`sel[2:0]`)  
- **Output:** 1-bit selected output (`out`)

## 💡 Key Concepts
- Selection using ternary (`? :`) operators
- Multiplexing logic using dataflow style
- Simple and efficient hardware logic

## 🧪 Example
For `in = 8'b10101010` and `sel = 3'b001`, output will be `1` (since `in[1] = 1`)

📁 Folder: `Day-12_8to1_Multiplexer`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
