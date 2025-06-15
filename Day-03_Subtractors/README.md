## Day 3 – Half Subtractor & Full Subtractor (Dataflow)

On Day 3 of my 50-Day Verilog HDL Challenge, I implemented **Half Subtractor** and **Full Subtractor** circuits using **dataflow modeling**.

### 🔸 Half Subtractor
A half subtractor is a combinational circuit that performs subtraction of two single-bit binary numbers `a` and `b`. It produces two outputs:
- `diff`: the difference (a - b)
- `borrow`: borrow bit when subtraction needs to borrow from higher bit

### 🔸 Full Subtractor
A full subtractor extends this functionality by including a `bin` (borrow-in) input. It calculates:
- `diff`: the result of a - b - bin
- `borrow`: generated borrow bit

### 💡 Design Highlights:
- Used concise `assign` statements for dataflow modeling.
- Simulated all combinations using testbenches in **Vivado**.
- Verified output waveforms and RTL schematics.

All simulation waveforms and RTL schematics are included in this folder. This builds strong fundamentals for arithmetic operations in digital systems.

📂 Folder: `Day-3_Subtractors`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
