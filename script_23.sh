#!/bin/bash

echo "This is script 23"


read -p "Enter directory: " dir
oldest=$(ls -lt "$dir" | tail -1 | awk '{print $9}')
newest=$(ls -lt "$dir" | head -2 | tail -1 | awk '{print $9}')
echo "Oldest file: $oldest"
echo "Newest file: $newest"