#!/bin/bash

# variable to connect to database
PSQL="psql --username=freecodecamp --dbname=number_guess_data -t --no-align -c"

# first interactive session with  user
echo "Enter your username:"

# getting user input into a variable
read USERNAME_INPUT

echo $USERNAME_INPUT

# querying data base to find username from input gotten
PLAYER_NAME=$($PSQL "SELECT * FROM users JOIN games USING(player_id)")


# func for the guessing_game
GUESSING_GAME() {
  

}


# generating  a random number from 1 to 1000
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))


# if player name not found, then let register play in database
if [[ -z $PLAYER_NAME ]]
then
  echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."

  # if player is found
else

    echo "Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses."

  echo ""

fi


