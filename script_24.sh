#!/bin/bash

echo "This is script 24"

read -p "Enter a number: " num
sum=0
temp=$num

while [ $temp -gt 0 ]; do
    sum=$((sum + temp % 10))
    temp=$((temp / 10))
done

if (( num % sum == 0 )); then
    echo "$num is a Harshad Number"
else
    echo "$num is NOT a Harshad Number"
fi