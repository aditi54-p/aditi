#!/bin/bash

echo "This is script 29"

read -p "Enter filename: " file
read -p "Enter word to find: " old
read -p "Enter word to replace with: " new

if [[ -f "$file" ]]; then
    sed -i "s/$old/$new/g" "$file"
    echo "Replaced all occurrences of '$old' with '$new' in '$file'."
else
    echo "File not found!"
fi
