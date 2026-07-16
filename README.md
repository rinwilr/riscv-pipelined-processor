# Design and Implementation of a 32-Bit 5-Stage Pipelined RISC-V Processor with Hazard Detection and Forwarding

Project Overview

An RTL design project focused on implementing a 32-bit RV32I RISC-V processor with a 5-stage pipelined architecture using SystemVerilog.

The project covers the complete processor design flow — from RISC-V ISA study and microarchitecture design to RTL implementation, pipeline integration, hazard handling, and simulation-based verification.

The processor implements:

- Instruction Fetch (IF)
- Instruction Decode (ID)
- Execute (EX)
- Memory Access (MEM)
- Write Back (WB)

with hardware support for:

- Data hazard detection
- Operand forwarding
- Pipeline stalls
- Control hazard handling
- Modular RTL design

Project Objectives

- Design a modular 32-bit RV32I RISC-V processor.
- Implement a 5-stage pipelined datapath.
- Develop hazard detection and forwarding mechanisms.
- Verify instruction execution using SystemVerilog testbenches.
- Analyze pipeline performance and debugging results.
- Architecture Features

Processor Components:

- Program Counter
- Instruction Memory
- Register File
- ALU
- Control Unit
- Data Memory
- Pipeline Registers

Hazard Handling:

- Load-use hazard detection
- Data forwarding paths
- Pipeline flushing for branch instructions


Tools & Technologies
- SystemVerilog
- RISC-V RV32I ISA
- RTL Design
- ModelSim / QuestaSim
- SystemVerilog Assertions
- Git & GitHub

Progress

This repository documents the complete development journey of building a 5-stage pipelined RISC-V processor from scratch, including architecture design, RTL implementation, hazard resolution, verification, debugging, and performance analysis.