#!/bin/bash

echo "This is script 21"

hour=$(date +%H)
if [ "$hour" -lt 12 ]; then
    echo "Good Morning!"
elif [ "$hour" -lt 18 ]; then
    echo "Good Afternoon!"
else
    echo "Good Evening!"
fi