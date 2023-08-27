#!/bin/bash
if [ $# -ne 2 ]; then
echo "Usage: ./file_check.sh <filename> <directory>"
exit 1
fi

filename="$1"
directory="$2"

if [ -f "$directory/$filename" ]; then
echo "File exists"
echo "Contents of $filename:"
cat "$directory/$filename"
echo "This is $filename"
else
echo "File '$filename' does not exist."
fi
