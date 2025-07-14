# Day 38 – Sequence Detector (Detects "1010")

📅 Verilog 50-Day HDL Challenge  
📂 Folder: Day-38_Sequence_Detector

---

## 🧠 Description

This is a **4-state Moore FSM** that detects the sequence "1010" in a serial input stream.  
- Input: Serial bit stream (`in`)
- Output: `detected = 1` when "1010" is found.
- Overlapping sequences are supported.

---

## 💡 State Flow:
- S0 → S1 on `1`
- S1 → S2 on `0`
- S2 → S3 on `1`
- S3 → S4 on `0` → `detected = 1`

---

## 🧪 Test Pattern:
Input: `110101010`  
Output: `detected = 1` at bit positions matching `1010`.

---

## 🧰 Files:

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
