#!/bin/bash

number_of_files=$(ls | wc -l)
guessed=0

while [ $guessed -eq 0  ]; do
    echo -n "How many files do you think are in this directory? "
    read guess

    if [ $guess -eq $number_of_files ]; then
        guessed=1
        echo Well done. There are $guess files in this directory.
    elif [ $guess -lt $number_of_files ]; then
        echo There are more than $guess files. Try again
    else
        echo There are fewer than $guess files. Try again
    fi
done
