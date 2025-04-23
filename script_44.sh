#!/bin/bash

echo "This is script 44"

# Define the directory to store scripts
SCRIPT_DIR="./bash_scripts"

# Create the directory if it doesn't exist
mkdir -p "$SCRIPT_DIR"

# Generate 50 Bash script files
for i in {1..50}; do
    SCRIPT_PATH="$SCRIPT_DIR/script_$i.sh"
    
    # Write a simple script into each file
    echo -e "#!/bin/bash\n\necho \"This is script $i\"" > "$SCRIPT_PATH"

    # Make the script executable
    chmod +x "$SCRIPT_PATH"
done

echo "50 Bash scripts created in $SCRIPT_DIR"
