#!/bin/bash

echo "This is script 18"

if [ $# -ne 3 ]; then
    echo "Usage: $0 num1 operator num2"
    exit 1
fi
echo "Result: $(echo "$1 $2 $3" | bc)"

