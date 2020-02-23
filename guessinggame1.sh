#!/bin/bash
# this program random numbers between 1 and 100. 
echo "Hello, "${USER}
guess=1
## Start loop of game here
while true; do
n1=10
echo -n "Guess the number of files. Guess: "

while read n2; do
    if [[ $n2 -eq $n1 ]]; then
        break;
    else
        if [[ $n2 -gt $n1 ]]; then
            echo -n "Sorry, your guess is too high. Guess again: "
        elif [[ $n2 -lt $n1 ]]; then
            echo -n "Sorry, your guess is too low. Guess again: "
        fi
    fi
    guess=$(( $guess + 1 ))
done
echo
echo "Congratulations! You win!"
if [[ $guess == 1 ]]; then
    echo "It took you $guess guess to get $n1."
else
    echo "It took you $guess guesses to get $n1."
fi

done
