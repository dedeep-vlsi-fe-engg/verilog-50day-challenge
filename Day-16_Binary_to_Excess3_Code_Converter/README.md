# Day 16 – Binary to Excess-3 Code Converter

🛠️ **Modeling Style:** Dataflow  
📦 **Tool Used:** Xilinx Vivado  
📂 **Folder:** Day-16_Binary_to_Excess3

---

## 💡 What is Excess-3 Code?

Excess-3 is a **non-weighted binary-coded decimal** system. It's obtained by adding 3 (i.e., 0011) to the standard 4-bit binary number.  
It eliminates negative values and is useful in digital systems like decimal arithmetic and error detection.

---

## 📘 Conversion Logic:

Excess3 = Binary + 3

For example:
- Binary `0100` (decimal 4) → Excess-3 `0111` (decimal 7)
- Binary `1001` (decimal 9) → Excess-3 `1100` (decimal 12)

---

## 🧪 Testbench:

- Applied binary inputs from `0000` to `1001` (decimal 0–9)
- Verified correct Excess-3 outputs
- RTL schematic and waveform included

---

## 📂 Files Included:

- `binary_to_excess3_df.v`
- `binary_to_excess3_df_tb.v`
- RTL schematic image
- Simulation waveform image
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)