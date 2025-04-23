#!/bin/bash

echo "This is script 39"

mkdir -p compressed
for img_39 in *.jpg; do
    convert "$img" -quality 70 "compressed/$img"
    echo "Compressed: $img -> compressed/$img"
done