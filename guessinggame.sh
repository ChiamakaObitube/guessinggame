#!/bin/bash

number_of_files=$(ls -l . | egrep -c '^-')
number_of_guesses=1
function guess {
  while true;
  do
    read -p "Guess the number of files in this directory: " user_number
         if [[ $user_number == *[^[:digit:]]* ]] 
        then
          echo "Only integers expected"
        
        fi
        if [[ $user_number -gt $number_of_files ]]
          then
            echo "your guess is wrong"
            echo "please select a number lesser than $user_number"
        else
            echo "Please select a number higher than $user_number"
        fi
        if [[ $user_number -eq $number_of_files ]]
          then
            echo "Your guess is correct"
            echo "You guessed right with these $number_of_guesses guesses"
            break
        fi
    number_of_guesses=$((number_of_guesses+1))
  done
}
guess