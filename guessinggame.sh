#!/bin/bash

number_of_files=10
for (( ; ; ))
do
    read -p "Guess the number of files in this directory: " user_number
    if [ $user_number -eq $number_of_files ]
    then
        echo "Your guess is correct"
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
    done