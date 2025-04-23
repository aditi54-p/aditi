#!/bin/bash

echo "This is script 28"

read -p "Enter the range (start end): " start end
echo "Kaprekar Numbers between $start and $end:"
for ((num=start; num<=end; num++)); do
    square=$((num * num))
    sq_str="$square"
    len=${#sq_str}
    mid=$((len / 2))

    left=${sq_str:0:mid}
    right=${sq_str:mid}

    left=$((left == "" ? 0 : left))
    right=$((right == "" ? 0 : right))

    if (( left + right == num )); then
        echo -n "$num "
    fi
done
echo