#!/bin/bash

echo "This is script 20"


echo "CPU Info:"
lscpu | grep "Model name"
echo "Memory Info:"
free -h
echo "Disk Usage:"
df -h
