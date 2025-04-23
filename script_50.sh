#!/bin/bash

echo "This is script 50"

# Function to get the length of a string
string_length() {
    local str=$1
    echo "Length of '$str' is: ${#str}"
}

# Function to extract a substring from a string
substring_extraction() {
    local str=$1
    local start=$2
    local length=$3
    local substring=${str:start:length}
    echo "Substring from position $start with length $length in '$str' is: $substring"
}

# Function to concatenate two strings
string_concatenation() {
    local str1=$1
    local str2=$2
    local concatenated="$str1$str2"
    echo "Concatenated string of '$str1' and '$str2' is: $concatenated"
}
# Test the string manipulation functions
string_length "Hello, world!"
substring_extraction "Hello, world!" 6 4
string_concatenation "Bash, " "Scripting!"