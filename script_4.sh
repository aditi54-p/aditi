#!/bin/bash

echo "This is script 4"

read -p "Enter N: " n
a=0
b=1
for (( i=0; i<n; i++ )); do
    echo -n "$a "
    temp=$((a + b))
    a=$b
    b=$temp
done
echo
