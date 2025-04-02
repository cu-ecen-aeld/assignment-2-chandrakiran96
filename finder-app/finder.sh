#!/bin/bash

# Validate arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required - <directory> and <search_string>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if the given path is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a valid directory"
    exit 1
fi

# Count number of files in the directory and subdirectories
file_count=$(find "$filesdir" -type f | wc -l)

# Count number of matching lines
match_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Print the result
echo "The number of files are $file_count and the number of matching lines are $match_count"
