#!/bin/bash

# bash script to print table of given number

echo "enter a number: "
read num

echo "table of $num"
for (( i = 1; i <= 10 ;i++ )); do
        echo "$(( $num * $i ))"
done
