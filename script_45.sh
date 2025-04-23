#!/bin/bash

echo "This is script 45"


# Define the directory where the scripts are stored
SCRIPT_DIR="./bash_scripts"

# Ensure the directory exists
if [[ ! -d "$SCRIPT_DIR" ]]; then
    echo "Directory $SCRIPT_DIR does not exist!"
    exit 1
fi

# Execute each script one after the other
for script in "$SCRIPT_DIR"/script_*.sh; do
    if [[ -x "$script" ]]; then
        echo "Executing: $script"
        bash "$script"
    else
        echo "Skipping: $script (Not executable)"
    fi
done

echo "All scripts executed."
