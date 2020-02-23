#!/bin/bash

number_of_files=$RANDOM
number_of_guesses=1
for (( ; ; ))
do
    read -p "Guess the number of files in this directory: " user_number
    if [ $user_number -eq $number_of_files ]
    then
        echo "Your guess is correct"
        echo "You guessed right with these $number_of_guesses guesses"
        break
    else
        echo "your guess is wrong"
        if [ $user_number -ge $number_of_files ]
        then
            echo "please select a number lesser than $user_number"
        else
            echo "Please select a number higher than $user_number"
        fi
    fi
    number_of_guesses=$((number_of_guesses+1))
    done