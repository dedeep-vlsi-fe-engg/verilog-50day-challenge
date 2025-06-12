# Day 10: 8-to-3 Non-Priority Encoder (Dataflow Modeling)

## 📝 Description

This project implements an 8-to-3 **non-priority encoder** using Verilog in **dataflow modeling style**.  
A non-priority encoder assumes that **only one input** will be HIGH at any given time. If multiple inputs are HIGH, the output may be incorrect or undefined.

## 📌 Logic Table

| Input (`in`)        | Output (`out`) |
|----------------------|----------------|
| 00000001             | 000            |
| 00000010             | 001            |
| 00000100             | 010            |
| 00001000             | 011            |
| 00010000             | 100            |
| 00100000             | 101            |
| 01000000             | 110            |
| 10000000             | 111            |

## 💡 Key Concepts
- Dataflow modeling using continuous assignments
- Boolean expression mapping
- Suitable for ideal input conditions (only one active HIGH at a time)

## ⚠️ Limitations
- Does **not** handle multiple active inputs
- For real-world applications, consider using a **priority encoder** or add input validation


📁 Folder: `Day-10_8to3_Encoder`
> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
