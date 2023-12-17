#!/bin/bash

# Specify the path to the folder containing the images
folder_path="."

# Check if the provided path is a directory
if [ ! -d "$folder_path" ]; then
    echo "Error: The provided path is not a directory."
    exit 1
fi

# Change to the specified directory
cd "$folder_path" || exit 1

# Counter for the index
index=1

# Rename each image file
for image_file in *.{png,jpg,jpeg,gif,bmp}; do
    if [ -f "$image_file" ]; then
        new_name="surrealism-$index.jpg"
        mv "$image_file" "$new_name"
        echo "Renamed: $image_file -> $new_name"
        ((index++))
    fi
done

echo "Renaming complete."
