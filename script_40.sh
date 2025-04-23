#!/bin/bash

echo "This is script 40"

mkdir -p cropped
for img_40 in *.jpg; do
    convert "$img" -gravity center -crop 300x300+0+0 "cropped/$img"
    echo "Cropped: $img -> cropped/$img"
done