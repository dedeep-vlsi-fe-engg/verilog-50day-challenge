# Day 44 – PWM Generator

📅 Verilog 50-Day HDL Challenge  
📂 Folder: Day-44_PWM_Generator

---

## 🕒 Project Description

This Verilog HDL project implements a **PWM (Pulse Width Modulation) Generator** that produces an adjustable-duty-cycle waveform based on user input. PWM is widely used in applications such as LED dimming, motor control, and signal generation.

---

## 🔧 Features

- User-configurable **duty cycle** (8-bit input: 0 to 255)
- Constant-frequency PWM output
- Simulates different duty cycles (e.g., 12%, 50%, 78%)
- Easily adaptable for real-time FPGA output

---

## ⚙️ Files

- `pwm_generator.v` – Core module to generate PWM output
- `pwm_generator_tb.v` – Testbench with waveform-based verification
- `pwm_generator.vcd` – Output waveform dump (for GTKWave)

---

## 📈 Simulation Output

The testbench shows pulse width varying with duty cycle:
- 12% → narrow pulse  
- 50% → square wave  
- 78% → wide pulse

> 🔗 [GitHub Repo](https://github.com/dedeep-vlsi-fe-engg/verilog-50day-challenge.git)
