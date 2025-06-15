## Day 9 – 3-to-8 Decoder

On Day 9 of my Verilog 50-Day Challenge, I implemented a **3-to-8 Decoder** using dataflow modeling.

### 🧠 What is a 3-to-8 Decoder?
A decoder activates exactly one output line based on a 3-bit binary input. If `enable` is LOW, all outputs remain LOW.

### 🛠️ Features:
- Inputs:
  - `in` : 3-bit binary input
  - `en` : enable signal
- Output:
  - `out`: 8-bit one-hot output

### 🔬 Tested in Vivado:
Tested with all possible 3-bit combinations with `en = 1`. Output waveforms verified and correct.

📁 Folder: `Day-9_3to8_Decoder`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)

A decoder is a key building block in memory address decoding, control logic, and instruction decoding in digital systems.
