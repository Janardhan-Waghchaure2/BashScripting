#!/bin/bash

echo "Enter directory:"
read dir

fileCnt=0
dirCnt=0

for child in "$dir"/*; do
    if [ -f "$child" ]; then
        ((fileCnt++))
    elif [ -d "$child" ]; then
        ((dirCnt++))
    fi
done

echo "Files count: $fileCnt"
echo "Directories count: $dirCnt"
