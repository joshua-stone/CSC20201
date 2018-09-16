# Overview

This project serves as a repo for coding assignments in CSC 202-01 for learning x86 Assembly. All assignments are located in `src/`

## Getting started

The course is going to teach x86 Assembly intended to run under Windows, therefore extra steps must be taken to ensure that an ASM program can be built and run outside of it. Here are the list of dependencies for running on Linux or macOS:

* [Make](https://www.gnu.org/software/make/) - Build automation tool that runs a list of commands for turning source code into an executable program.

* [Wine Is Not an Emulator (Wine)](https://www.winehq.org/) - Compatitibility layer that can run unmodified Windows programs on Unix-like operating systems. This will allow the MASM assembler and linker to run.

* [DOSBox](https://www.dosbox.com/) - Emulator which emulates an IBM PC DOS environment for running DOS programs. This is required for running 16-bit programs due to Wine only supporting 32-bit and 64-bit.

* [Microsoft Macro Assembler (MASM)](http://www.masm32.com/) - The assembler which all ASM programs written must be compatible with. Wine must be installed first so that the MASM installer can run.

## Installation

Under Fedora, run the following command to install the required packages:

```bash
sudo dnf install make wine dosbox unzip
```

Under Ubuntu/Debian:

```bash
sudo apt install make wine dosbox unzip
```

Next, download and run the graphical MASM installer under Wine:

```bash
wget https://website.assemblercode.com/masm32/masm32v11r.zip
unzip masm32v11r.zip
chmod +x install.exe
./install.exe
```

MASM should be installed to `C:\`, and will take a few minutes to build all of its .asm files.

The build system can be confirmed to work by attempting to build and run a sample program:

```bash
cd examples/
make
dosbox hello.exe
```


