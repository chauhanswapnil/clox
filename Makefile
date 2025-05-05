BUILD_DIR := build
SRC := $(shell find . -name '*.c' -o -name '*.h')

.PHONY: all run clean rebuild release autoformat lint

all:
	cmake -S . -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Debug
	cmake --build $(BUILD_DIR)

run: all
	./$(BUILD_DIR)/clox

clean:
	rm -rf $(BUILD_DIR)

rebuild: clean all

release:
	cmake -S . -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Release
	cmake --build $(BUILD_DIR)

autoformat:
	clang-format -i $(SRC)

lint:
	@echo "🧼 Checking formatting with clang-format..."
	@clang-format --dry-run --Werror $(SRC)
