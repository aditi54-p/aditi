#!/bin/bash

echo "This is script 43"

# Create a zip archive of the directory "workarea"
zip -r workarea.zip workarea

# Check if the zip operation was successful
if [ $? -eq 0 ]; then
    echo "Zip archive 'workarea.zip' created successfully."
else
    echo "Failed to create zip archive 'workarea.zip'."
fi