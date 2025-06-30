#!/bin/bash

function check_guess {
    local num_files=$1
    local guess=$2

    if [[ $guess -lt $num_files ]]
    then
        echo "Too low!"
    elif [[ $guess -gt $num_files ]]
    then
        echo "Too high!"
    else
        echo "Congratulations! You guessed correctly."
        exit 0
    fi
}

num_files=$(ls -l | grep -v '^d' | wc -l)

while true; do
    echo "How many files are in the current directory? "
    read guess
    check_guess $num_files $guess
done
