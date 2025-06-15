# Day 15 – Gray to Binary Code Converter

🛠️ **Modeling Style:** Dataflow  
📦 **Tool Used:** Xilinx Vivado  
📂 **Folder:** Day-15_Gray_to_Binary

---

## 🔁 Why Convert Gray to Binary?

Gray Code reduces transition errors, but binary is required for numerical processing. So converting Gray back to Binary is important in digital communication and memory addressing.

---

## 📘 Logic Used:

- `bin[3] = gray[3]`
- `bin[2] = bin[3] ^ gray[2]`
- `bin[1] = bin[2] ^ gray[1]`
- `bin[0] = bin[1] ^ gray[0]`

---

## 🧪 Testbench:

- Gray code inputs from `0000` to `1111` applied
- Binary outputs verified
- RTL schematic and waveform snapshots provided

---

## 📂 Files:

- `gray_to_binary_df.v`
- `gray_to_binary_df_tb.v`
- Simulation Waveform (PNG)
- RTL Schematic (PNG)
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)