#!/bin/bash

echo "enter a file:"
read file

# -E flag to use regex with grep and -o to output exact string match and not entire line
grep -Eo '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}' $file
