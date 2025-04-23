#!/bin/bash

echo "This is script 27"


read -p "Enter a number: " num
square=$((num * num))
sq_str="$square"
len=${#sq_str}
mid=$((len / 2))

left=${sq_str:0:mid}
right=${sq_str:mid}

left=$((left == "" ? 0 : left))
right=$((right == "" ? 0 : right))

if (( left + right == num )); then
    echo "$num is a Kaprekar Number"
else
    echo "$num is NOT a Kaprekar Number"
fi