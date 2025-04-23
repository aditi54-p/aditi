#!/bin/bash

echo "This is script 36"

mkdir -p converted
for img_36 in *.png; do
    convert "$img" "converted/${img%.png}.jpg"
    echo "Converted: $img -> converted/${img%.png}.jpg"
done
