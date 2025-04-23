#!/bin/bash

echo "This is script 2"

#Addition of digits of a given no.

echo -n "Enter a number: "
read a

sum=0
num2=$a


while [ $num2 -gt 0 ]
do
    k=$((num2%10))
    sum=$((k + sum))
    num2=$((num2/10))

done

echo "the addition of digits of $a is : $sum"
    
    

#script to reverse a given no. 

echo -n "Enter a number: "
read num

rev=0
while [ $num -gt 0 ]
do
    rem=$((num % 10)) 
    rev=$((rev * 10 + rem))  
    num=$((num / 10))  
done

echo "Reversed number: $rev"

