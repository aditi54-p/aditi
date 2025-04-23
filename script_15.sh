#!/bin/bash

echo "This is script 15"

echo "Input a number:"
read n

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please input a valid number."
    exit 1
fi

echo "Multiplication table for $number:"
for ((i = 1; i <= 10; i++))
do
    echo "$n x $i = $((n * i))"
done