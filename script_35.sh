#!/bin/bash

echo "This is script 35"

todo_file="todo.txt"
touch "$todo_file"

echo "1) View Tasks"
echo "2) Add Task"
read -p "Choose an option: " option

if [ "$option" -eq 1 ]; then
    cat "$todo_file"
elif [ "$option" -eq 2 ]; then
    read -p "Enter task: " task
    echo "$task" >> "$todo_file"
    echo "Task added!"
fi
