# 16x8 RAM using Verilog

## Overview

This project implements a **16x8-bit Single Port RAM** using Verilog HDL.

The RAM supports writing data into memory locations and reading stored data using an address input.

## Features

- 16 memory locations
- 8-bit data storage
- Single port memory
- Synchronous write operation
- Synchronous read operation
- GTKWave simulation support

## Inputs

| Signal | Description |
|--------|-------------|
| clk | Clock signal |
| we | Write Enable |
| addr[3:0] | Memory Address |
| data_in[7:0] | Input Data |

## Output

| Signal | Description |
|--------|-------------|
| data_out[7:0] | Output Data |

## Memory Organization

```
Address      Data
0000         8-bit
0001         8-bit
0010         8-bit
...
1111         8-bit
```

## Project Files

- `ram.v` – RAM design code
- `ram_tb.v` – Testbench
- `ram.vcd` – Simulation waveform
- `simulation_result.png` – Waveform screenshot

## Simulation

### Compile

```bash
iverilog -o ram ram.v ram_tb.v
```

### Run

```bash
vvp ram
```

### View Waveform

```bash
gtkwave ram.vcd
```

## Applications

- Processor memory
- Cache memory
- FPGA memory blocks
- Embedded systems
- Digital storage system