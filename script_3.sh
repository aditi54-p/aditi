#!/bin/bash

echo "This is script 3"



#Factorial of a given no.

echo -n "Enter a number: "
read i

fact=1
num=$i

while [ $num -gt 1 ]  
do

    fact=$((fact * num))

    num=$((num - 1))

done

echo "the factorial of $i : $fact"


