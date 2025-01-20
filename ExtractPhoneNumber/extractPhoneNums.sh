#!/bin/bash

echo "enter a textFile:"

read file

echo "Matched results: "

# extract the charsets which have only 0-9 digits and 
# length of 10 characters.
grep -Eo "[0-9]{10}" $file
