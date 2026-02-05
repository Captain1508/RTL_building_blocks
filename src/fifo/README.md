# Synchronous Parameterized FIFO (Verilog)

## Overview
This directory contains a **synchronous, parameterized, register-based FIFO** implemented in Verilog as part of a growing RTL building blocks library.

The goal of this FIFO is to establish strong fundamentals in:
- FIFO control logic
- Pointer-based design
- Full/empty detection
- Clean, synthesizable RTL
- Verification-driven development

The FIFO is designed to be reusable and scalable for small to medium depths and serves as a foundation for more advanced buffering designs.

---

## FIFO Description

### Parameterized Register-Based FIFO
This FIFO uses **register arrays**, **read/write pointers**, and a **count-based mechanism** to manage data flow.

### Parameters
- `WIDTH` : Data width of each FIFO entry  
- `DEPTH` : Number of entries in the FIFO (power-of-2 recommended)

Pointer widths are derived automatically using `$clog2`, making the design fully parameterized.

---

## Key Features
- Single-clock (**synchronous**) operation
- Register-based storage
- Pointer-based read and write logic
- Full and empty flag generation
- Supports simultaneous read and write in the same clock cycle
- Fully synthesizable
- Clean separation of control and datapath logic

---

## Testbench
A **self-checking testbench** is provided to validate FIFO functionality, including:
- Reset behavior
- Write operations
- Read operations
- Full and empty conditions
- Illegal operations (write when full, read when empty)
- Simultaneous read and write scenarios

The testbench reports **PASS / FAIL** without relying solely on waveform inspection.

---

## Design Scope (Current)
- ✔ Synchronous FIFO (single clock)
- ✔ Parameterized depth and width
- ✔ Register-based implementation
- ✔ Verification-focused design

---

## Planned Extensions
This FIFO will be extended incrementally as part of future learning and projects:

- Ready/Valid interface
- Use as a buffer in UART TX/RX designs
- Asynchronous FIFO (CDC-safe, Gray-coded pointers)
- Comparison with BRAM-based FIFO implementations

Each extension will be added only after mastering the required concepts to keep the design clean and structured.

---

## Notes
- This FIFO is intended for learning, reuse, and interview preparation.
- Emphasis is placed on clarity, correctness, and scalability.

---

## Author
Aman Sharma  
