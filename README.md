# ideal-hello-world (speed)

[![NASM Version](https://img.shields.io/badge/NASM-2.15+-blue.svg)](https://nasm.us/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Hello World optimized for execution speed. Fast as a cat's reflex.

## 📝 Description

The **speed** branch focuses on performance. Every instruction is arranged to minimize CPU cycles and avoid
pipeline stalls.

### Features:
- 87 cycles on average (Intel i7)
- Aligned instructions (cache-friendly)
- Uses `movabs` for 64-bit immediates
- No unnecessary jumps

## ⚙️ Installation

```bash
git clone -b optimized https://github.com/FelineFantasy/ideal-hello-world.git
cd ideal-hello-world/optimized
```

## 🎮 Build & Run

```bash
nasm -f elf64 hello.asm -o hello.o
ld -s hello.o -o hello
./hello
```

## 👤 Author

- **FelineFantasy**
- **License**: MIT
