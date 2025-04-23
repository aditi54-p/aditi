#!/bin/bash

echo "This is script 48"

# Number of questions
TOTAL_QUESTIONS=5
SCORE=0

echo "Welcome to the Math Quiz!"
echo "You will be asked $TOTAL_QUESTIONS random math questions."
echo "Try to answer them correctly!"
echo "----------------------------------"

for (( i=1; i<=TOTAL_QUESTIONS; i++ ))
do
    # Generate two random numbers between 1 and 20
    NUM1=$(( RANDOM % 20 + 1 ))
    NUM2=$(( RANDOM % 20 + 1 ))

    # Randomly choose an operation
    OPS=("+" "-" "*" "/")
    OPERATOR=${OPS[$(( RANDOM % 4 ))]}

    # Calculate the correct answer (for division, ensure whole numbers)
    case $OPERATOR in
        "+") CORRECT_ANSWER=$(( NUM1 + NUM2 )) ;;
        "-") CORRECT_ANSWER=$(( NUM1 - NUM2 )) ;;
        "*") CORRECT_ANSWER=$(( NUM1 * NUM2 )) ;;
        "/") 
            NUM1=$(( NUM1 * NUM2 ))  # Ensure a whole number result
            CORRECT_ANSWER=$(( NUM1 / NUM2 )) 
            ;;
    esac

    # Ask the question
    echo "Q$i: What is $NUM1 $OPERATOR $NUM2 ?"
    read -p "Your answer: " USER_ANSWER

    # Check the answer
    if [[ $USER_ANSWER -eq $CORRECT_ANSWER ]]; then
        echo "Correct!"
        (( SCORE++ ))
    else
        echo "Wrong! The correct answer is $CORRECT_ANSWER."
    fi
    echo "----------------------------------"
done

# Display final score
echo "Quiz Completed!"
echo "You scored $SCORE out of $TOTAL_QUESTIONS!"

