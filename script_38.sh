#!/bin/bash

echo "This is script 38"

mkdir -p grayscale
for img_38 in *.jpg; do
    convert "$img" -colorspace Gray "grayscale/$img"
    echo "Converted to grayscale: $img -> grayscale/$img"
done