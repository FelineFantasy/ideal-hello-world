<<<<<<< HEAD
# ideal-hello-world (main)
=======
# ideal-hello-world (size)
>>>>>>> size

[![NASM Version](https://img.shields.io/badge/NASM-2.15+-blue.svg)](https://nasm.us/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

<<<<<<< HEAD
Classic Hello World in NASM x86-64. Simple, readable, and honest.

## 📝 Description

The **main** branch contains a clean implementation of "Hello World" using `syscall`. Every instruction is
commented, making it perfect for learning x86-64 assembly.

### Features:
- Uses `syscall` (Linux x86-64)
- Readable with comments
- 16 bytes of code
- No external dependencies
=======
The smallest Hello World possible in NASM without cheating.

## 📝 Description

The **minimal** branch is an exercise in size optimization. The binary is just **12 bytes** — no ELF header, no
linker, just raw x86 code.

### Features:
- Only 12 bytes of machine code
- Flat binary (no ELF)
- Uses `int 0x80` (saves 5 bytes)
- Inline string data
>>>>>>> size

## ⚙️ Installation

```bash
<<<<<<< HEAD
git clone -b main https://github.com/FelineFantasy/ideal-hello-world.git
cd ideal-hello-world/main
=======
git clone -b size https://github.com/FelineFantasy/ideal-hello-world.git
cd ideal-hello-world
>>>>>>> size
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
