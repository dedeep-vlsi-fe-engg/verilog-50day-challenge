## Day 4 – 4-bit Ripple-Carry Adder (Dataflow)

Today, I implemented a **4-bit Ripple-Carry Adder** using **dataflow modeling** in Verilog as part of Day 4 of my 50-Day Verilog HDL Challenge.

### 🔸 What is a Ripple-Carry Adder?
It is a combinational circuit formed by connecting multiple full adders in series. Each adder adds a pair of input bits and the carry from the previous stage, passing the carry to the next adder—hence the term *ripple*.

### 🔧 Design Details:
- Inputs: 4-bit numbers `a`, `b`, and `cin` (initial carry).
- Outputs: 4-bit `sum` and `cout` (final carry).
- Modeled using chained **assign** statements in dataflow style.
- No behavioral constructs like `always`.

### 🔬 Testing:
- Simulated with different 4-bit inputs and various `cin` values.
- Verified with waveform viewer in **Vivado**.
- RTL schematic confirms structural clarity.

📂 Folder: `Day-4_RippleCarryAdder`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)

This project strengthens understanding of how ripple-carry logic works and is foundational for designing wider adders and arithmetic units in digital systems.
