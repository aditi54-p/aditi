#!/bin/bash

echo "This is script 11"

dir="/home/user"
size_limit=100M
echo "Files larger than $size_limit in $dir:"
find "$dir" -type f -size +$size_limit -exec ls -lh {} \;
