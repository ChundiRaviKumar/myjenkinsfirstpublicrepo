#!/bin/bash

# test.sh - Test script for Jenkins practice
# This script demonstrates a simple testing process

echo "========================================"
echo "Starting Test Process"
echo "========================================"

# Display test information
echo "Test Time: $(date)"
echo "Python Version:"
python3 --version

# Run the sample Python application
echo ""
echo "Running application tests..."

if [ -f "hello.py" ]; then
    echo "Executing hello.py..."
    python3 hello.py
    TEST_RESULT=$?
else
    echo "Warning: hello.py not found, skipping application tests"
    TEST_RESULT=0
fi

# Test result summary
echo ""
echo "========================================"
echo "Test Process Completed"
echo "========================================"

if [ $TEST_RESULT -eq 0 ]; then
    echo "All tests passed! ✓"
    echo "Application executed successfully"
else
    echo "Some tests failed! ✗"
    echo "Exit code: $TEST_RESULT"
fi

echo ""
