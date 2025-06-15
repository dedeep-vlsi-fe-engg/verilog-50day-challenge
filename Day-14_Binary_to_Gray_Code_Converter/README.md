# Day 14 – Binary to Gray Code Converter

🛠️ **Modeling Style:** Dataflow  
📦 **Tool Used:** Xilinx Vivado  
📂 **Folder:** Day-14_Binary_to_Gray

---

## 🔄 What is Gray Code?

Gray Code is a binary numbering system in which two successive values differ in only one bit. This is especially useful in minimizing errors in digital communication and mechanical encoders.

---

## 📘 Logic Used:

- `gray[3] = bin[3]`
- `gray[2] = bin[3] ^ bin[2]`
- `gray[1] = bin[2] ^ bin[1]`
- `gray[0] = bin[1] ^ bin[0]`

---

## 🧪 Testbench:

- Binary inputs from `0000` to `1111` applied
- Gray outputs verified
- Waveforms and RTL schematic included

---

## 📂 Files:

- `binary_to_gray_df.v`
- `binary_to_gray_df_tb.v`
- Simulation Waveform (PNG)
- RTL Schematic (PNG)
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)