#!/bin/bash

echo "This is script 5"

read -p "Enter three numbers: " a b c
if (( a > b && a > c )); then
    echo "$a is largest"
elif (( b > c )); then
    echo "$b is largest"
else
    echo "$c is largest"
fi
