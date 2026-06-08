# FSM-Pattern-Detector
# 1011 Sequence Detector - Moore FSM

This repository contains a **Verilog implementation** of a Finite State Machine (FSM) designed to detect the bit sequence `1011`.

## 📌 Project Overview

The project implements a **Moore Machine** where the output is determined solely by the current state. In this design, the detector searches for the specific pattern `1011` in a serial stream of input bits.

### Key Features:

* **Machine Type:** Moore FSM.
* **Sequence:** 1011.
* **Detection Mode:** Non-Overlapping (The machine resets after a successful match).
* **Design Pattern:** 3-always block behavioral modeling (State Register, Next-State Logic, Output Logic).

## 🛠 FSM Logic

A Moore machine for a 4-bit sequence requires **5 states** to account for the initial reset state plus one state for each correctly identified bit in the sequence.
<img width="1105" height="360" alt="image" src="https://github.com/user-attachments/assets/19f81e71-2185-4e6d-b5db-5f5f9e974575" />


### State Descriptions:

1. **S_RESET:** Initial idle state.
2. **S_1:** First '1' detected.
3. **S_10:** '10' detected.
4. **S_101:** '101' detected.
5. **S_1011:** Full sequence '1011' detected. Output `y` becomes high (`1`).

# Waveform
<img width="1423" height="576" alt="Screenshot 2026-06-08 220953" src="https://github.com/user-attachments/assets/93a3e470-dd61-4462-8a65-6cdd35aa9dc1" />

