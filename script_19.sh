#!/bin/bash


echo "This is script 19"

read -p "Enter number: " num
read -p "Enter operator (+, -, *, /): " op
result=0
while [ "$num" -gt 0 ]; do
    digit=$((num % 10))
    result=$(echo "$result $op $digit" | bc)
    num=$((num / 10))
done
echo "Result: $result"
