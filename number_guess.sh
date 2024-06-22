#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=gussing_game -t --no-align -c"

# get the username from the user
echo "Enter your username:"
read USERNAME

#check if the username is in the data base
USERNAME_RESULT=$($PSQL "SELECT username FROM game_stat WHERE username='$USERNAME'")

# if the username is not in the database
if [[ -z $USERNAME_RESULT ]]
then
    # welcome the username
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    # add player to database
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO game_stat(username) VALUES ('$USERNAME')")

else
    # if the user already played before we get the username information from the database
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM game_stat WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT best_game FROM game_stat WHERE username='$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi 

# generate a secret number from 1 to 1000
# create the number for guesses counter
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NEW_GAME_SCORE=0

# prompt the username to guess a number and take the input
echo "Guess the secret number between 1 and 1000:"
read GUESSED_NUMBER

# create a loop to see if the user has guessed the random number
while [[ $SECRET_NUMBER -ne $GUESSED_NUMBER ]]
do
    # check if the input in a number. if its not ask the user to fix the input
    if [[ $GUESSED_NUMBER =~ ^[0-9]+$ ]]
    then
        # if the guessed number is bigger than the random number
        if [[ $GUESSED_NUMBER -gt $SECRET_NUMBER ]]
        then
            echo "It's lower than that, guess again:"
            read GUESSED_NUMBER

            ((NEW_GAME_SCORE++)) 

        # if the guessed number is smalled than the random number
        elif [[ $GUESSED_NUMBER -lt $SECRET_NUMBER ]]
        then
            echo "It's higher than that, guess again:"
            read GUESSED_NUMBER

            ((NEW_GAME_SCORE++)) 
        fi
    else
        echo "That is not an integer, guess again:"
        read GUESSED_NUMBER
        ((NEW_GAME_SCORE++))
    fi
done

((NEW_GAME_SCORE++))

GAMES_PLAYED_RESULT=$($PSQL "SELECT games_played FROM game_stat WHERE username='$USERNAME'")
((GAMES_PLAYED_RESULT++))
GAMES_PLAYED_UPDATE=$($PSQL "UPDATE game_stat SET games_played=$GAMES_PLAYED_RESULT WHERE username='$USERNAME'")

BEST_GAME_RESULT=$($PSQL "SELECT best_game FROM game_stat WHERE username='$USERNAME'")

if [[ $BEST_GAME_RESULT -gt $NEW_GAME_SCORE ]]
then
    UPDATE_NEW_SCORE=$($PSQL "UPDATE game_stat SET best_game = $NEW_GAME_SCORE WHERE username='$USERNAME'")
fi


echo "You guessed it in $NEW_GAME_SCORE tries. The secret number was $SECRET_NUMBER. Nice job!"
