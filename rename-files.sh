#!/bin/bash
#rename files in a directory sequentially, recursively

# Define the parent directory containing subfolders
parent_dir="~/Desktop/sketch"

# Loop through each subfolder in the parent directory
for subfolder in */; do
    echo "$subfolder"
    if [ -d "$subfolder" ]; then
        # Navigate into the subfolder
        cd "$subfolder" || continue

        # Get the subfolder name
        subfolder_name="$(basename "$subfolder")"
        echo "in path $subfoler_name"

        counter=1
        # Loop through each file in the subfolder
        for file in *; do
            echo $"file"
            if [ -f "$file" ]; then
                new_name="$subfolder_name"."$counter".jpg
                mv "$file" "$new_name"
                let counter=counter+1
            fi
        done
    fi

    cd ..
done
