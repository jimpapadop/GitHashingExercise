#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <4-digit-integer>"
    exit 1
fi

# Validate if the argument is a 4-digit integer
if ! [[ $1 =~ ^[0-9]{4}$ ]]; then
    echo "Please provide a valid 4-digit integer."
    exit 1
fi

# Hash the input using SHA-256 and save the output to hash_output.txt
echo -n "$1" | sha256sum | cut -d ' ' -f 1 > hash_output.txt

echo "Hash of $1 saved in hash_output.txt"

