#!/bin/bash

projectname="nodejsexpressapimongodbe-commercefeatureproject"

total_size=0

image_ids=$(docker compose -p "$projectname" images | awk '{print $4}')

for id in $image_ids; do
    #image_id=$(docker compose )
    image_size=$(docker image inspect --format '{{.Size}}' "$id")
    total_size=$((total_size + image_size))
done

total_size_MB=$((total_size / 1024 / 1024))
#total_size_GB=$((total_size / 1024 / 1024 / 1024))
total_size_GB=$(awk "BEGIN {printf \"%.2f\", $total_size / (1024^3)}")

echo "Total Size of Images: ${total_size} bytes (${total_size_MB} MB or ${total_size_GB} GB)"
