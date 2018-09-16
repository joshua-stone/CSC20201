# Overview

This project serves as a repo for coding assignments in CSC 202-01 for learning x86 Assembly. All assignments are located in `src/`

## Getting started

The course is going to teach x86 Assembly intended to run under the win32 API, therefore extra steps must be taken to ensure that an ASM program can be built and run outside Windows. The [Microsoft Macro Assembler (MASM)](http://www.masm32.com/) is recommended by the course, however there are alternative programs for bootstrapping a build environment under GNU/Linux and macOS:

* [Netwide Assembler (NASM)](https://nasm.us/) - Portable assembler and dissassembler for x86 ASM that supports numerous binary output formats

* [Minimalist GNU for Windows (MinGW)](http://mingw.org/) - Suite of build tools that can compile Windows binaries or cross-compile them on a Linux host or other Unix-like

* [Make](https://www.gnu.org/software/make/) - Build automation tool that runs a list of commands for turning source code into an executable program

* [Wine Is Not an Emulator (Wine)](https://www.winehq.org/) - Compatitibility layer that can run unmodified Windows programs on Unix-like operating systems

## Installing programs

, simply run this command to install the required packages:

```bash
sudo dnf install nasm mingw32-binutils make wine
```

