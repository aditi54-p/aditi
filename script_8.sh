#!/bin/bash

echo "This is script 8"

read -p "Enter two numbers: " a b
a=$((a + b))
b=$((a - b))
a=$((a - b))
echo "Swapped values: a=$a, b=$b"
