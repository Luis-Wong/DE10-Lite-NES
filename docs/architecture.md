# Architecture

The system architecture consists of the following key components:

1. **Custom 6502 CPU Core:** A Verilog implementation of the 6502 processor, responsible for executing NES instructions and managing game logic.
2. **PPU (Picture Processing Unit):** A custom implementation that generates video output based on NES graphics data, interfacing with the VGA output module.
3. **Memory Management:** Utilizing the MAX 10's internal memory and external SDRAM for storing game ROMs, graphics data, and runtime variables.

## System Block Diagram
