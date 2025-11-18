# Makefile for building OpenSCAD files

# Find all .scad files in the src directory
SCAD_FILES = $(shell find src -name '*.scad' -not -path 'src/lib/*')

# Create the corresponding .stl file names in the build directory
STL_FILES = $(patsubst src/%.scad,build/%.stl,$(SCAD_FILES))

# The default target
all: $(STL_FILES)

# Rule to build .stl files from .scad files
build/%.stl: src/%.scad
	@mkdir -p $(dir $@)
	OPENSCADPATH=$(shell pwd)/src/lib openscad -D '$$fn=100' -o $@ $<

# Clean up the build directory
clean:
	rm -rf build

.PHONY: all clean