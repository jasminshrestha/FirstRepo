#!/bin/bash
NUMGUESS=0

echo "$0 - Guess a number between 1 and 20"

(( secret = RANDOM % 20 + 1 ))
echo $guess
while [[ guess -ne secret ]]
do
    (( NUMGUESS = NUMGUESS + 1 ))
    read -p "Enter guess: " guess

    if (( $guess < $secret )); then
        echo "Try higher..."
    elif (( $guess > $secret )); then
        echo "Try lower..."
    fi
done

printf "Yes! You guessed it in $NUMGUESS guesses.\n"
