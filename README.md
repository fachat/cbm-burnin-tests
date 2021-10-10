# cbm-burnin-tests

This repository contains a hardware check program, for the
Commodore PET, or extensions of it (Micro-PET, CS/A65)

The program is called 'pet\_burnin', and auto-detects the different models of PET.
Currently it supports:

* 4032 - 40 column 32k memory 1MHz
* 8032 - 80 column 32k memory 1MHz
* 8096/8296 - 80 column 96/128k memory, where only 96k are tested, 1MHz
* CS/A65 - 40/80 column 1/2MHz with video card memory tests

## Type of tests

## Standard PET diagnostics:

This is where the original code comes from.

1. [a '8296\_burnin'](8296_burnin/): commented disassembly of the '8296 burnin" program

## Diagnostics for related machines:

1. [a 8296][8296/]: Test modules for the 8296 extended memory and FPLA chip
2. [a csa][csa/]: Test modules for the CS/A65 PET clone http://www.6502.org/users/andre/csa/index.html

