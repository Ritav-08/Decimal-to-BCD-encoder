# 📘 Decimal-to-BCD Encoder (10-to-4 Encoder) – Verilog

## 🔹 Overview

This project implements a **Decimal-to-BCD Encoder** in Verilog along with its testbench.
The encoder converts a **10-line decimal input (0–9)** into a **4-bit Binary Coded Decimal (BCD)** output.

Each input line represents a decimal digit, and only one input should be active at a time (one-hot encoding).

---

## 🔹 Features

* 10 input lines representing decimal digits (0–9)
* 4-bit BCD output
* Uses **case statement** for clear mapping
* Handles invalid inputs using `default` case
* Fully combinational logic (`always @(*)`)

---

## 🔹 Module Description

### 📌 Inputs

* `a_i [9:0]` → 10-bit one-hot input representing decimal digits

### 📌 Outputs

* `y_o [3:0]` → 4-bit BCD output

---

## 🔹 Working Principle

Each input line corresponds to a decimal digit:

| Decimal | Input (a_i) | BCD Output (y_o) |
| ------- | ----------- | ---------------- |
| 0       | 0000000001  | 0000             |
| 1       | 0000000010  | 0001             |
| 2       | 0000000100  | 0010             |
| 3       | 0000001000  | 0011             |
| 4       | 0000010000  | 0100             |
| 5       | 0000100000  | 0101             |
| 6       | 0001000000  | 0110             |
| 7       | 0010000000  | 0111             |
| 8       | 0100000000  | 1000             |
| 9       | 1000000000  | 1001             |

### 🔸 Invalid Case

* If:

  * No input is active, or
  * Multiple inputs are active
* Output becomes:

  ```
  y_o = xxxx
  ```

---

## 🔹 Testbench Details

The testbench (`tb_DtBCDencoder`) verifies all decimal inputs:

| Test Case | Input      | Description     |
| --------- | ---------- | --------------- |
| 1         | 0000000000 | No input active |
| 2         | 0000000001 | Decimal 0       |
| 3         | 0000000010 | Decimal 1       |
| 4         | 0000000100 | Decimal 2       |
| 5         | 0000001000 | Decimal 3       |
| 6         | 0000010000 | Decimal 4       |
| 7         | 0000100000 | Decimal 5       |
| 8         | 0001000000 | Decimal 6       |
| 9         | 0010000000 | Decimal 7       |
| 10        | 0100000000 | Decimal 8       |
| 11        | 1000000000 | Decimal 9       |

---

## 🔹 Simulation

### ▶️ Tools

* ModelSim / QuestaSim
* Xilinx Vivado
* Icarus Verilog + GTKWave

### ▶️ Run (Icarus Verilog Example)

```bash id="z1k9qp"
iverilog -o DtBCDencoder.vvp DtBCDencoder.v tb_DtBCDencoder.v
vvp DtBCDencoder.vvp
gtkwave DtBCDencoder.vcd
```

---

## 🔹 Output

* Console output using `$display`
* Waveform dump file:

  ```
  DtBCDencoder.vcd
  ```

---

## 🔹 Sample Output Format

```id="n6r2vx"
Time: 10 | Decimal: 5 (0000100000) | BCD: 0101
```

---

## 🔹 Applications

* Digital systems requiring decimal-to-binary conversion
* Keypad encoding systems
* Display drivers (7-segment interfaces)
* Embedded and FPGA-based designs

---

## 🔹 File Structure

```id="p4s8tm"
├── DtBCDencoder.v        # Encoder Design
├── tb_DtBCDencoder.v     # Testbench
├── DtBCDencoder.vcd      # Waveform output (generated)
└── README.txt            # Documentation
```
