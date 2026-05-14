# About This Project

This project focuses on the implementation of an NES core on the **DE10-Lite FPGA**, utilizing Verilog for custom hardware logic and a Nios II soft-processor for system management.

## Technical Objectives

* **Custom 6502 CPU:** A from-scratch Verilog implementation of the 6502 processor.
* **Graphics & Video:** Interfacing PPU with VGA output to render classic NES sprites and backgrounds.
* **Memory Management:** Utilizing the MAX 10's internal memory and SDRAM for ROM loading.

## Development Tools

* **Hardware Description:** Verilog and SystemVerilog
* **Platform:** Intel Quartus Prime 25.1 (MAX 10 / DE10-Lite)
* **System Integration:** Nios II Soft-Processor & Avalon-MM Interconnect
