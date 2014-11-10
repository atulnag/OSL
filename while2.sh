#!/bin/sh
# Guess the number game.  Version 2.0

ANSWER=5          # The correct answer

echo "Guess a number between 1 and 10. "

while read NUM
do
        # Validate the input...
        if [ "$NUM" -lt 1 ] || [ "$NUM" -gt 10 ]; then
                echo "The number must be between 1 and 10! Guess again. "
        elif [ "$NUM" -eq "$ANSWER" ]; then
                echo "You got the answer correct!"
                exit
        else
                echo "Incorrect, guess again. "
        fi
done
