#!/bin/bash

# Check if an argument (new image) is provided
if [ $# -ne 1 ]; then
  echo "This script requires only one argument (new image name)"
  exit 1
fi

# Define variables
new_image_name="$1"
values_yaml="chatroom/values.yaml"

# Use awk to update the image value
awk -v new_image="$new_image_name" '
  /image:/ && found == 1 {
    sub(/nvb20\/chat-app:[a-f0-9]+/, new_image) # Replace image value
    found = 0 # Reset found flag
  }
  /name: room-container/ { found = 1 } # Set found flag when entering room-container section
  1 # Print the line (pattern-action default)
' "$values_yaml" > tmpfile && mv tmpfile "$values_yaml"

echo "Image name updated to $new_image_name in $values_yaml"
