## Day 11 – 8-to-3 Encoder (Priority)

On Day 11 of my Verilog 50-Day Challenge, I implemented a **Priority Encoder** that encodes 8 input lines into a 3-bit binary code.

### 🔎 What is an Encoder?
An **encoder** is a combinational logic circuit that converts an active input line into a binary representation.  
In this case, **only one input is expected to be active at a time**, and the output is a **3-bit binary code** representing that input.

### ⚙️ Design Highlights:
- Inputs: 8-bit one-hot signal
- Output: 3-bit binary value
- Handles priority: higher input index takes precedence
- If no input is high, output is undefined (3'bxxx)

### ✅ Simulation:
Verified in Vivado for all 8 possible valid inputs and 1 invalid case (all inputs LOW).  
Output matches expected binary codes.

📁 Folder: `Day-11_8to3_Priority_Encoder`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
