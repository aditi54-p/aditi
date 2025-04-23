#!/bin/bash

echo "This is script 25"

read -p "Enter the range (start end): " start end

echo "Harshad Numbers between $start and $end:"
for ((num=start; num<=end; num++)); do
    sum=0
    temp=$num
    while [ $temp -gt 0 ]; do
        sum=$((sum + temp % 10))
        temp=$((temp / 10))
    done
    if (( num % sum == 0 )); then
        echo -n "$num "
    fi
done
echo