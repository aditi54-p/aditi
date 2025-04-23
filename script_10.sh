#!/bin/bash

echo "This is script 10"

read -p "Enter temperature in Fahrenheit: " f
c=$(echo "scale=2; ($f - 32) * 5/9" | bc)
echo "$f°F is equivalent to $c°C"
