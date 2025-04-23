#!/bin/bash

echo "This is script 13"

read -p "Enter countdown time in seconds: " time
while [ $time -gt 0 ]; do
    echo -ne "$time seconds remaining...\r"
    sleep 1
    ((time--))
done
echo -e "\nTime's up!"
