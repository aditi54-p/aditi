#!/bin/bash

echo "This is script 37"

mkdir -p resized
for img_37 in *.jpg; do
    convert "$img" -resize 800x600 "resized/$img"
    echo "Resized: $img -> resized/$img"
done