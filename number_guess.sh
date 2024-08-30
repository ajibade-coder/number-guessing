#!/bin/bash

# variable to connect to database
PSQL="psql --username=freecodecamp --dbname=number_guess_data -t --no-align -c"

# first interactive session with  user
echo "Enter your username:"

# getting user input into a variable
read USERNAME_INPUT


# querying data base to find username from input gotten
PLAYER_NAME=$($PSQL "SELECT  name FROM users WHERE name = '$USERNAME_INPUT' ")





# func for the guessing_game ######################################################################
GUESSING_GAME() {

# accessing arg for the function
argdata=$1


echo "what u passed is $argdata"


# generating  a random number from 1 to 1000
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "na ran be this $RANDOM_NUMBER"


# asking user to guess
echo "Guess the secret number between 1 and 1000:"

# read users input func
ASK_USER() {
read USER_GUESS
}

# calling the ask user func
ASK_USER

ROUNDS_IN_GAME=1

  # when firts trail not correct user enters into an until loop till the guess matches the random number ############################
  until [[ $USER_GUESS -eq  $RANDOM_NUMBER ]]
   do
  
  # if user guess is not a number
  if [[  ! $USER_GUESS =~ ^-?[0-9]+$ ]]
  then 
    echo "That is not an integer, guess again:"
    echo "1st reason"
     echo "userguess: $USER_GUESS  random_number: $RANDOM_NUMBER"
    ASK_USER

  # if user guess is a number
  else
  # if user guess is less than the random_number
  ###################################################################################################
     if [[ $USER_GUESS -gt $RANDOM_NUMBER ]] 
    then
    echo $RANDOM_NUMBER
      echo "It's lower than that, guess again:"
      echo "2nd reason"
      echo "userguess: $USER_GUESS  random_number: $RANDOM_NUMBER"
      ASK_USER

    # if user guess is greater then the random number
      else
      echo "It's higher than that, guess again:"
      echo "3rd reason"
       echo "userguess: $USER_GUESS  random_number: $RANDOM_NUMBER"
      ASK_USER
    fi
#############################################################################################
  fi


  # increment the rounds in gaming session
  ROUNDS_IN_GAME=$(( ROUNDS_IN_GAME + 1 ))
  echo $ROUNDS_IN_GAME


  done
  ################################# end of until loop


  # when the user gets the it, winning message
SN=$($PSQL "SELECT player_id FROM users WHERE name = '$argdata' " )
 echo "this the passed arg $argdata "
 UPDATEGAMESTABLE=$($PSQL "INSERT INTO games(player_id, winninground) VALUES($SN, $ROUNDS_IN_GAME)")

  echo "You guessed it in $ROUNDS_IN_GAME tries. The secret number was $RANDOM_NUMBER. Nice job!"

} # end of guessing game func #########






# if player name not found, then let register play in database
if [[ -z $PLAYER_NAME ]]
then
  echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."
  # insert player into database
  NEWPLAYERDETIAL=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME_INPUT') ")

  #PLAYER_NAME=$($PSQL "SELECT  name FROM users WHERE name = '$USERNAME_INPUT' ")
  #play game with username
  GUESSING_GAME "$USERNAME_INPUT"



  # if player is found
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users JOIN games USING(player_id) WHERE name = '$USERNAME_INPUT' ")
  BEST_GAME=$($PSQL "SELECT MIN( winninground) FROM users JOIN games USING(player_id) WHERE name = '$USERNAME_INPUT' ")
  USER_IN_DATA=$($PSQL "SELECT name FROM users WHERE name = '$USERNAME_INPUT' ")

    echo "Welcome back, $USER_IN_DATA! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

      #play game with username
   GUESSING_GAME "$USERNAME_INPUT"

fi


