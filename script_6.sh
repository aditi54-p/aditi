#!/bin/bash

echo "This is script 6"

read -p "Enter two numbers: " a b
gcd() {
    local x=$1 y=$2
    while [ $y -ne 0 ]; do
        temp=$y
        y=$((x % y))
        x=$temp
    done
    echo $x
}
lcm=$(( (a * b) / $(gcd $a $b) ))
echo "LCM: $lcm"
