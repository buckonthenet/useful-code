#!/bin/bash
#using edge impulse uploader to go through folders recursively

# Loop through each subfolder in the parent directory
for subfolder in */; do
    echo "$subfolder"
    if [ -d "$subfolder" ]; then
        echo "uploading folder $subfolder"
        edge-impulse-uploader --api-key <api-key> --category split --label $subfolder $subfolder*.jpg
    fi

done
