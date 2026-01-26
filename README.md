# RTL Building Blocks – Verilog

## Overview
This repository contains commonly used RTL building blocks implemented in
synthesizable Verilog HDL. The designs are written in a clean, parameterized,
and reusable manner, targeting FPGA and SoC-oriented digital systems.

The objective of this repository is to build a strong RTL foundation that can
be reused in larger system-level designs such as communication interfaces,
FIFO-based datapaths, and memory-mapped peripherals.

Target FPGA: Artix-7 (Basys3)

---

## Repository Structure
The repository follows a modular structure where each major design category
is organized into its own directory. Design-specific documentation, synthesis
results, and design learnings are maintained alongside the corresponding RTL
source files.


---

## Implemented Module Categories
- Logic Gates using Gate Level Model
- Logic Gates using Data Model 


> Detailed design descriptions, synthesis results, and module-specific
> learnings are documented within individual design directories.

---

## Design Methodology
- Fully synthesizable Verilog HDL
- Parameterized widths for reusability
- Single clock domain per module
- Clean separation of datapath and control logic
- Consistent RTL coding style
- Simple, focused testbenches for functional verification

---

## Verification Approach
- RTL simulation using Vivado Simulator
- Directed test cases for functional correctness
- Waveform-based debugging during development

---

## Tools Used
- Vivado (Simulation and Synthesis)
- Basys3 FPGA Board

---

## Author
Aman Sharma
