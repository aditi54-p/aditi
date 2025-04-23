#!/bin/bash

echo "This is script 41"

i=1
for file in *.jpg; do
    mv "$file" "img$i.jpg"
    ((i++))
done