## Project Title

Design and Implementation of a 32-Bit 5-Stage Pipelined RISC-V Processor with Hazard Detection and Forwarding

---

## Project Overview

This project aims to design, implement, and verify a 32-bit five-stage pipelined RISC-V processor based on the RV32I base integer instruction set. The processor will be developed using SystemVerilog RTL and implemented and simulated using Xilinx Vivado.

---

## Objectives

- Design a modular 32-bit RV32I processor.
- Implement a five-stage pipeline.
- Support the RV32I base integer instruction set.
- Improve performance using pipelining.
- Implement hazard detection and data forwarding.
- Verify each RTL module using self-checking SystemVerilog testbenches.
- Perform processor-level verification using assembly test programs.
- Develop a reusable verification environment suitable for Design Verification learning.

---

## Scope

The project includes the complete design and implementation of:

- Five-stage pipelined datapath
- Control Unit
- Register File
- ALU
- Pipeline Registers
- Hazard Detection Unit
- Forwarding Unit
- Instruction Memory
- Data Memory
- SystemVerilog Testbench
- Vivado Simulation

---

## Development Tools

| Tool | Purpose |
|------|---------|
| Xilinx Vivado | Design & Simulation |
| SystemVerilog | RTL Design |
| Git | Version Control |
| GitHub | Project Repository |
| Visual Studio Code | Code Editor |
| Draw.io | Architecture Diagrams |

---

# Processor Specifications

| Parameter | Specification |
|-----------|---------------|
| ISA | RV32I |
| Architecture | 32-bit |
| Pipeline | 5 Stages |
| Register Count | 32 |
| Register Width | 32-bit |
| Instruction Memory | ROM |
| Data Memory | RAM |
| RTL Language | SystemVerilog |
| Simulator | Xilinx Vivado |

---

# Supported Instruction Set

| Instruction Type | Instructions |
|------------------|--------------|
| Arithmetic | ADD, SUB |
| Logical | AND, OR, XOR |
| Immediate | ADDI, ANDI, ORI, XORI |
| Shift | SLL, SRL, SRA, SLLI, SRLI, SRAI |
| Compare | SLT, SLTI |
| Memory | LW, SW |
| Branch | BEQ, BNE, BLT, BGE |
| Jump | JAL, JALR |
| Upper Immediate | LUI, AUIPC |

---

# Processor Pipeline

The processor follows the standard five-stage pipeline.

1. Instruction Fetch (IF)
2. Instruction Decode (ID)
3. Execute (EX)
4. Memory Access (MEM)
5. Write Back (WB)

---

# Major RTL Modules

The processor consists of the following major RTL modules:

- Program Counter
- PC Increment
- Instruction Memory
- Register File
- Immediate Generator
- Control Unit
- ALU Control Unit
- Arithmetic Logic Unit (ALU)
- Branch Comparator
- Data Memory
- Pipeline Registers
- Hazard Detection Unit
- Data Forwarding Unit
- Top-Level Processor