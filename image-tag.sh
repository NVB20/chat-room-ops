#!/bin/bash

# Check if an argument (new image) is provided
if [ $# -ne 1 ]; then
  echo "This script requires only one argument (new image name)"
  exit 1
fi

# Define variables
new_image_name="$1"
values_yaml="chatroom/values.yaml"

#Use awk to update the image value
sed -i "s|image: nvb20/chat-app:.*|image: $new_image_name|" $values_yaml

echo "Image name updated to $new_image_name in $values_yaml"
