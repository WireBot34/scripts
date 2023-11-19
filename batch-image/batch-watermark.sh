#!/bin/bash

echo "Batch Watermarking Script"

# Function to prompt user for folder path
get_folder_path() {
    read -p "Enter the path to the $1 folder: " folder_path
    echo "$folder_path"
}

# Get input folder path
input_folder=$(get_folder_path "input")

# Get output folder path
output_folder="${input_folder}_numbred"

# Ensure the output folder exists
mkdir -p "$output_folder"

echo "Processing images..."

for image in "$input_folder"/*.jpg; do
    filename=$(basename -- "$image")
    filename_no_extension="${filename%.*}"
    output_image="$output_folder/${filename_no_extension}_watermarked.jpg"

    # Use ImageMagick to add text watermark
   convert "$image" -gravity SouthWest -pointsize 180 -fill white -annotate +50+50 "$filename_no_extension" "$output_image"

    echo "Watermarked: $output_image"
done

echo "Batch watermarking complete!"

