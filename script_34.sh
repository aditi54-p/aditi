#!/bin/bash

echo "This is script 34"


mkdir -p Text_Files Images Music

for file in *; do
    case "$file" in
        *.txt) mv "$file" Text_Files/ ;;
        *.jpg) mv "$file" Images/ ;;
        *.mp3) mv "$file" Music/ ;;
    esac
done
echo "Files organized successfully."
