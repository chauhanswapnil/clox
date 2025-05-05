# Clox

A C-based implementation of the Lox programming language, following the book [Crafting Interpreters](https://craftinginterpreters.com/).

This project builds `clox`, a bytecode virtual machine for the Lox language.

---

## 🚀 Getting Started

### 🔧 Requirements

- C compiler (GCC, Clang, etc.)
- [CMake](https://cmake.org/) ≥ 3.25
- (Optional but recommended) `make`

---

## 🛠 Build and Run

### Using Make (Recommended)

```bash
make         # Builds the project in Debug mode
make run     # Builds and runs ./build/clox
make clean   # Deletes the build directory
make rebuild # Cleans and rebuilds
make release # Builds in Release mode with optimizations
```

### Without Make

```bash
# Build Debug manually
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build
./build/clox

# OR Build Release
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
./build/clox
```

## 📂 Project Structure
├── CMakeLists.txt     # Build configuration
├── Makefile           # Make targets for easier builds
├── main.c             # Entry point
├── chunk.*            # Bytecode chunk management
├── debug.*            # Debugging utilities
├── memory.*           # Memory management
├── value.*            # Value type system
├── vm.*               # Virtual Machine
├── compiler.*         # Compiler frontend
├── scanner.*          # Tokenizer
└── README.md          # You're here!
