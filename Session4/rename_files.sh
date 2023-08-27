#!/bin/bash
if [ $# -ne 2 ]; then
echo "Usage: ./rename_files.sh <extension> <new_name>"
exit 1
fi

extension="$1"
new_name="$2"
counter=1

for file in *."$extension"; do
new_filename="${new_name}${counter}.${extension}"

mv "$file" "$new_filename"

counter=$((counter+1))

echo "Renamed '$file' to '$new_filename'"
done 
