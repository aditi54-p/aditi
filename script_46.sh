#!/bin/bash

echo "This is script 46"



read -p "Enter process name to kill: " PROC_NAME

# Get the Process ID (PID)
PID=$(pgrep "$PROC_NAME")

if [[ -z "$PID" ]]; then
    echo "No process found with name $PROC_NAME"
    exit 1
fi

# Kill the process
kill -9 "$PID"

echo "Process $PROC_NAME (PID: $PID) has been terminated."
