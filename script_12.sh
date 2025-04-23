#!/bin/bash

echo "This is script 12"

if [ -f "log.txt" ]; then
    sed -i 's/error/warning/g' log.txt
    echo "Replaced all occurrences of 'error' with 'warning' in log.txt."
else
    echo "File log.txt not found!"
fi
