#!/bin/bash

echo "This is script 7"

arr=(10 5 25 3 100 18)
largest=${arr[0]}
for i in "${arr[@]}"; do
    if (( i > largest )); then
        largest=$i
    fi
done
echo "Largest: $largest"
