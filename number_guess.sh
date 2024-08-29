#!/bin/bash

# variable to connect to database
PSQL="psql --username=freecodecamp --dbname=number_guess_data -t --no-align -c"

# first interactive session with  user
echo "Enter your username:"

# getting user input into a variable
read USERNAME_INPUT

echo $USERNAME_INPUT

# generating  a random number from 1 to 1000
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))
