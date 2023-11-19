#!/bin/bash

echo "Batch Watermarking Script"

# Function to get the output folder path based on the input folder path
get_output_folder() {
    local input_folder="$1"
    echo "${input_folder}_numberd"
}

# Function for watermarking
batch_watermark() {
    local filename="$1"
    local output="$2"

    convert "$filename" -gravity SouthWest -pointsize 180 -fill white -annotate +50+50 "${filename%.*}" "$output"
}

# Get input folder path
input_folder=$(get_folder_path "input")

# Get output folder path
output_folder=$(get_output_folder "$input_folder")

# Ensure the output folder exists
mkdir -p "$output_folder"

echo "Processing images..."

for image in "$input_folder"/*.jpg; do
    filename=$(basename -- "$image")
    filename_no_extension="${filename%.*}"
    output_image="$output_folder/${filename_no_extension}_watermarked.jpg"

    # Call the watermarking function
    batch_watermark "$image" "$output_image"

    echo "Watermarked: $output_image"
done

echo "Batch watermarking complete!"

