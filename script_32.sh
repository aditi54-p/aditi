#!/bin/bash

echo "This is script 32"

read -p "Enter number greater than 3: " num
if [ "$num" -lt 3 ]; then
echo "Number must be greater than 3"
exit
fi
echo -n "Fibonacci series for $num terms is: "
fibo() {
if [ "$1" -le 1 ]; then
echo -n "$1"
else
echo -n $(( $(fibo $(($1 - 1)) ) + $(fibo $(($1 - 2)) ) ))
fi
}
for (( i=0; i<$num; ++i)); do
fibo $i
# Print , and space between the numbers except the last one
if [ "$i" -lt $(($num -1)) ]; then
echo -n ", "
fi
done
echo ""