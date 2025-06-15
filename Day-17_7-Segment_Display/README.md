# Day 17 – BCD to Seven Segment Display Decoder

🔢 **Modeling Style:** Dataflow  
💡 **Type:** Common Cathode Display  
🛠️ **Tool:** Vivado  
📁 **Folder:** Day-17_SevenSegment

---

## 💡 Overview:

This module converts a 4-bit BCD input to a **7-segment display** output, allowing digits 0–9 to be shown. It is designed for **common cathode** type displays.

- BCD input: 0000–1001 (Decimal 0 to 9)
- Output: 7-bit segment control (a to g)

---

## 🔧 Implementation Details:

Each digit’s segment combination is coded using **case statements** in **dataflow style**. Simulation was done using testbench.

---

## ✅ Files Included:

- `seven_segment_df.v`
- `seven_segment_df_tb.v`
- RTL schematic
- Simulation waveform
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)