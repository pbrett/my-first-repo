#!/bin/bash

# Function: guess_loop
# Accepts one parameter - the actual number to guess
function guess_loop {

    # Initialise guess to a number which cannot terminate the loop
    guess=0
    while [ $guess -ne $1  ]; do
        echo -n "How many files do you think are in this directory? "
        read guess

        if [ $guess -eq $1 ]; then
            guessed=1
            echo Well done. There are $guess files in this directory.

        elif [ $guess -lt $1 ]; then
            echo There are more than $guess files. Try again

        else
            echo There are fewer than $guess files. Try again

        fi
    done
}

# Call guess_loop with the number of files in the current directory.
guess_loop $(ls | wc -l)
