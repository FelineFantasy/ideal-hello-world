# Build all three Hello, World! variants into build/.
NASM ?= nasm
LD ?= ld
BUILD_DIR ?= build
NASMFLAGS ?= -f elf64
LDFLAGS ?= -N -s --no-warn-rwx-segments

.PHONY: all standard fast small clean

all: standard fast small

standard: $(BUILD_DIR)/hello_standard
fast: $(BUILD_DIR)/hello_fast
small: $(BUILD_DIR)/hello_small

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/%.o: src/%.asm | $(BUILD_DIR)
	$(NASM) $(NASMFLAGS) -o $@ $<

$(BUILD_DIR)/hello_standard: $(BUILD_DIR)/standard.o
	$(LD) $(LDFLAGS) -o $@ $<

$(BUILD_DIR)/hello_fast: $(BUILD_DIR)/fast.o
	$(LD) $(LDFLAGS) -o $@ $<

# The small variant is a flat binary with a handcrafted ELF header,
# so it needs no linker at all.
$(BUILD_DIR)/hello_small: src/small.asm | $(BUILD_DIR)
	$(NASM) -f bin -o $@ $<

clean:
	rm -rf $(BUILD_DIR)
