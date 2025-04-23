#!/bin/bash

echo "This is script 31"

# Define the text file
file="document.txt"

# Count the number of characters in the file excluding spaces and special characters
char_count=$(grep -oE '[[:alnum:]]' "$file" | wc -l)

echo "Number of characters in $file excluding spaces and special characters: $char_count"