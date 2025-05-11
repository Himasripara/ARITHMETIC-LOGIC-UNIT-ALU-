# ARITHMETIC-LOGIC-UNIT-ALU-

*COMPANY*:CODTECH IT SOLUTIONS

*NAME*:PARA HIMA SRI LAKSHMI

*INTERN ID*:CT08DL1363

*DOMAIN*:VLSI

*DURATION*:6WEEKS

*MENTOR*:NEELA SANTOSH

This project implements a basic Arithmetic Logic Unit (ALU) using Verilog as part of the CODTECH VLSI Internship program.  
The ALU supports the following operations:

- **Addition** (`A + B`)
- **Subtraction** (`A - B`)
- **Bitwise AND** (`A & B`)
- **Bitwise OR** (`A | B`)
- **Bitwise NOT** (`~A`)

The operation is selected using a 3-bit opcode input.

##  Files Included
- `alu.v` – Verilog module implementing the ALU
- `alu_tb.v` – Testbench used to simulate and verify ALU functionality

##  Simulation
The design was simulated using EDA Playground.

###  Simulation Link
[Click here to view the simulation on EDA Playground](https://www.edaplayground.com/x/WBrj)

## ▶️ How to Run Locally
1. Use any Verilog simulator such as:
   - **ModelSim**
   - **Vivado**
   - **Icarus Verilog**

2. Compile and simulate:
   ```bash
   iverilog -o alu_tb alu.v alu_tb.v
   vvp alu_tb
