ASM=nasm

SRC_DIR = src
BUILD_DIR = build

$(BUILD_DIR)/os_floopy.img: $(BUILD_DIR)/os.bin
	cp $(BUILD_DIR)/os.bin $(BUILD_DIR)/os_floopy.img
	truncate -s 1440k $(BUILD_DIR)/os_floopy.img

$(BUILD_DIR)/os.bin: $(SRC_DIR)/os.asm
	$(ASM) $(SRC_DIR)/os.asm -f bin -o $(BUILD_DIR)/os.bin

