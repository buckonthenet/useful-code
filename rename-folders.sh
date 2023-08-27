#!/bin/bash
#rename folders sequentially, recursively

prefix="label"

# Counter for sequential numbering
counter=1

# Loop through each folder in the base directory
for dir in */; do
    echo "$dir"
    new_name="$prefix$counter"
    echo "$new_name"
    mv "$dir" "$new_name"
    let counter=counter+1
done
