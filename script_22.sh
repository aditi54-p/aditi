#!/bin/bash

echo "This is script 22"


read -p "Enter directory to check for duplicates: " dir
declare -A filehash
for file in "$dir"/*; do
    hash=$(md5sum "$file" | awk '{print $1}')
    if [[ ${filehash[$hash]} ]]; then
        echo "Duplicate found: $file"
        rm "$file"
    else
        filehash[$hash]="$file"
    fi
done
