#!/bin/bash

# Colors

Red='\033[0;31m'
Green='\033[0;32m'
Clear='\033[0m'

echo "Enter a number for how many times the for loop will run."

read number

# Check if number is not a number. If it is not a number, exit.

re='^[0-9]+$'
if ! [[ $number =~ $re ]]; then
    echo -e "${Red}Error: Not a number${Clear}" >&2
    exit 1
fi

counter=1
until [ $counter -gt $number ]; do
    printf "Hello World! "
    ((counter++))
done
