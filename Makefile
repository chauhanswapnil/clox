.PHONY: all build run clean rebuild release

all: build

build:
	cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
	cmake --build build

run: build
	./build/clox

rebuild:
	rm -rf build
	cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
	cmake --build build

release:
	rm -rf build
	cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
	cmake --build build

clean:
	rm -rf build
