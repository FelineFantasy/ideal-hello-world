# ideal-hello-world 🚀

The ultimate **Hello, World!** reference for x86-64 Assembly on Linux. This project explores three extremes of systems programming: maximum compliance, raw execution speed, and extreme binary size.

## 📊 Comparison Matrix

| Variant | Source File | Description | Target Size | Toolchain |
| :--- | :--- | :--- | :--- | :--- |
| **Standard** | `src/standard.asm` | Clean, readable code compliant with Linux ABI. | ~800-900 bytes | NASM + LD |
| **Fast** | `src/fast.asm` | Optimized for CPU cycles, RIP-relative, and L1i cache layout. | ~700 bytes | NASM + LD |
| **Small** | `src/small.asm` | Extreme ELF-hacking. Code injected straight into headers. | **~120-150 bytes** | FASM |

---

## 📂 Repository Structure

```text
ideal-hello-world/
├── src/
│   ├── standard.asm   # Canonical variant (.data and .text separation)
│   ├── fast.asm       # Performance-focused (minimized opcodes, text-inlined data)
│   └── small.asm      # Micro-variant (handcrafted ELF64 header injection)
├── Makefile           # Multi-target build automation
└── README.md          # Project documentation
```

---

## 🛠️ Build & Run

### 1. Prerequisites
To compile all variants, you need both `nasm` and `fasm`. Install them on Ubuntu/Debian via:
```bash
sudo apt update && sudo apt install -y nasm fasm build-essential
```

### 2. Compilation
Compile all three binaries into the `build/` directory with a single command:
```bash
make
```

### 3. Execution & Size Verification
Run any binary from the `build/` folder:
```bash
./build/hello_standard
./build/hello_fast
./build/hello_small
```

To verify the binary sizes yourself, run:
```bash
ls -la build/
```

---

## 🔬 How it Works

Unlike a standard C implementation using `printf` (which pulls in kilobytes of heavy `libc` overhead), this project communicates with the Linux kernel directly via native **system calls (syscalls)**:
* `sys_write` (ID `1`) — transmits the string to standard output (`stdout`).
* `sys_exit` (ID `60`) — terminates the process safely with an exit code of `0`.

Each variant optimizes this sequence: `standard` keeps the boundaries clean, `fast` drops unnecessary CPU cycles on long opcodes, and `small` folds the machine instructions directly inside the unused bytes of the executable header structures.
