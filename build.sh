#!/bin/bash

# build.sh - Build script for Jenkins practice
# This script demonstrates a simple build process

echo "========================================"
echo "Starting Build Process"
echo "========================================"

# Display build information
echo "Build Time: $(date)"
echo "Current Directory: $(pwd)"
echo "User: $(whoami)"

# Create a build output directory
echo "Creating build directory..."
mkdir -p build

# Example: Compile or process files
echo "Processing project files..."

# Copy source files to build directory
if [ -f "hello.py" ]; then
    echo "Found hello.py, copying to build directory..."
    cp hello.py build/
else
    echo "Warning: hello.py not found"
fi

# Display build summary
echo ""
echo "========================================"
echo "Build Process Completed Successfully!"
echo "========================================"
echo "Output directory: build/"
echo "Build artifacts ready for testing"
echo ""
