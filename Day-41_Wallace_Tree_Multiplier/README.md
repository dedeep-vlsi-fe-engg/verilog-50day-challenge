## Day 41: Wallace Tree Multiplier
📅 50-Day Verilog HDL Challenge
⚙️ Category: Combinational Circuit
🧠 Difficulty: Intermediate
🛠️ Tool: Xilinx Vivado
📁 Project Name: wallace_tree_multiplier

## ✅ Objective:
To implement a 4-bit Wallace Tree Multiplier using Verilog HDL that multiplies two 4-bit binary numbers and generates an 8-bit product. The Wallace Tree approach reduces partial products efficiently using half adders and full adders.

## 🎯 Functional Description:
The Wallace Tree Multiplier is a fast hardware multiplier that:

Uses AND gates to generate partial products.

Reduces the partial products using carry-save addition.

Final addition is performed using a ripple-carry adder.

It is faster than traditional array multipliers and commonly used in DSPs and ALUs.

## 📥 Inputs:
Signal	Width	Description
a	4-bit	First operand
b	4-bit	Second operand

## 📤 Output:
Signal	Width	Description
product	8-bit	Output result

## 🧪 Test Cases:
a	b	Expected Product
4'b0011 (3)	4'b0101 (5)	8'b00001111 (15)
4'b1001 (9)	4'b0110 (6)	8'b00110110 (54)
4'b1111 (15)	4'b1111 (15)	8'b11100001 (225)
4'b0000 (0)	4'b1010 (10)	8'b00000000 (0)

## 📂 Files Included:

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
