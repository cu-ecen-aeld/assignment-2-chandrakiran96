#!/bin/bash

# Validate arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required - <file_path> and <text_to_write>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the content to the file
echo "$writestr" > "$writefile"

# Check if file was successfully created
if [ $? -ne 0 ]; then
    echo "Error: Could not create/write to file '$writefile'"
    exit 1
fi
