# ideal-hello-world (main)

[![NASM Version](https://img.shields.io/badge/NASM-2.15+-blue.svg)](https://nasm.us/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Classic Hello World in NASM x86-64. Simple, readable, and honest.

## 📝 Description

The **main** branch contains a clean implementation of "Hello World" using `syscall`. Every instruction is
commented, making it perfect for learning x86-64 assembly.

### Features:
- Uses `syscall` (Linux x86-64)
- Readable with comments
- 16 bytes of code
- No external dependencies

## ⚙️ Installation

```bash
git clone -b main https://github.com/FelineFantasy/ideal-hello-world.git
cd ideal-hello-world/main
```

## 🎮 Build & Run

```bash
nasm -f elf64 hello.asm -o hello.o
ld -s hello.o -o hello
./hello
```

## 📊 Output

```
Hello, world!
```

## 👤 Author

- **FelineFantasy**
- **License**: MIT
