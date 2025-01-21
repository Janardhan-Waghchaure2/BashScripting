#!/bin/bash

# script to print files and directories inside a folder

echo "enter a directory:"
read dir

# print all files
echo -e "\nFiles:"
for f in "$dir"/*; do
    if [ -f $f ]; then
        echo "$(basename $f)"
    fi
done

echo -e "\nDirectories:" # -e enables interpretation of backslash
# print all directories
for f in "$dir"/*; do
    if [ -d $f ]; then
        echo "$(basename $f)"
    fi
done
