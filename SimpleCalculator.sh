#!/bin/bash

# Function to display the menu
display_menu() {
    echo "Simple Calculator"
    echo "================="
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
}

# Function to perform the calculation
perform_calculation() {
    local operation=$1
    local num1=$2
    local num2=$3

    case $operation in
        1) result=$((num1 + num2));;
        2) result=$((num1 - num2));;
        3) result=$((num1 * num2));;
        4)
            if [ $num2 -ne 0 ]; then
                result=$((num1 / num2))
            else
                echo "Error: Division by zero is not allowed."
                return 1
            fi
            ;;
        *) echo "Invalid operation"; return 1;;
    esac
    echo "Result: $result"
}

# Main script
while true; do
    display_menu
    read -p "Choose an option (1-5): " choice

    if [ "$choice" -eq 5 ]; then
        echo "Exiting the calculator. Goodbye!"
        break
    fi

    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2

    perform_calculation $choice $num1 $num2
done
