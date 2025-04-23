#!/bin/bash

echo "This is script 30"

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]; then
    echo "Usage: $0 <search_string>"
    exit 1
fi

# Search for the provided string in the file "document.txt"
search_string="$1"
grep -q "$search_string" document.txt

# Check the exit status of grep
if [ $? -eq 0 ]; then
    echo "String '$search_string' found in 'document.txt'."
else
    echo "String '$search_string' not found in 'document.txt'."
fi