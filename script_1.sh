#!/bin/bash

echo "This is script 1"

echo -n "Enter a number: "
read j

rev=0
num=$j
while [ $num -gt 0 ]
do
    rem=$((num % 10)) 
    rev=$((rev * 10 + rem))  
    num=$((num / 10))  
done
echo "Reversed number: $rev"

if [ $rev == $j ] 
then 
    echo "the given no. is palindrome"
else
    
    echo "the given no. is not a palindrome"
fi 

