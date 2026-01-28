# Sequence Detector (FSM)

## Overview
This folder contains four implementations of a sequence detector using
Finite State Machines (FSMs) in Verilog HDL. The designs demonstrate the
behavioral differences between **Mealy and Moore machines**, as well as
**overlapping and non-overlapping** sequence detection.

The chosen sequence pattern is **1011**, selected because it has partial
self-overlap and clearly highlights FSM design trade-offs.

---

## Implemented Variants
The following four variants are implemented:

1. **Mealy – Overlapping**
2. **Mealy – Non-overlapping**
3. **Moore – Overlapping**
4. **Moore – Non-overlapping**

Each design is implemented as a separate RTL module for clarity.

---

## Sequence Pattern

This pattern allows:
- Clear distinction between overlapping and non-overlapping detection
- Comparison of output timing between Mealy and Moore FSMs
- Meaningful FSM state transitions

---

## Design Notes
- **Mealy FSM**
  - Output depends on current state and input
  - Faster detection (output can assert in the same cycle)

- **Moore FSM**
  - Output depends only on current state
  - Output is typically delayed by one clock cycle

- **Overlapping Detection**
  - Allows reuse of partial matches
  - Can detect consecutive patterns with shared bits

- **Non-overlapping Detection**
  - Resets FSM after a successful match
  - Ensures patterns do not share bits

---

## Summary Comparison

| Variant | Output Dependency | Detection Latency |
|------|------------------|------------------|
| Mealy Overlap | State + Input | 0 cycles |
| Mealy Non-overlap | State + Input | 0 cycles |
| Moore Overlap | State only | 1 cycle |
| Moore Non-overlap | State only | 1 cycle |

---

## Verification
All four FSM variants are verified using a **common testbench** that applies
identical input sequences, clocking, and reset conditions. This enables
direct behavioral comparison between implementations.

---

## Key Learnings
- Structural differences between Mealy and Moore FSMs
- Impact of overlapping vs non-overlapping detection
- Importance of state design and transition correctness
- Timing implications of FSM output logic

---

## Tools Used
- Verilog HDL
- Vivado Simulator
