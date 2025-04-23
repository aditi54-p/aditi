#!/bin/bash

echo "This is script 16"

# Define the correct password
password="Pass23$"

# Prompt the user to input a password
while true; do
    echo "Input the password:"
    read user_password

    # Check if the entered password matches the correct password
    if [[ "$user_password" == "$password" ]]; then
        echo "Access granted"
        break  # Exit the loop if the correct password is entered
    else
        echo "Incorrect password. Please try again."
    fi
done