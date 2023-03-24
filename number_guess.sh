#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --tuples-only -c"
C=0

USER() {
  RAN_NUM=$(( $RANDOM % 1000 + 1 ))
  echo "Enter your username:"
  read UN
  USER=$($PSQL "SELECT username, game, best FROM games WHERE username = '$UN'")
  if [[ -z $USER ]]
  then
    echo "Welcome, $UN! It looks like this is your first time here."
    echo "Guess the secret number between 1 and 1000:"
    PLAY $RAN_NUM $UN
  else
    read USERNAME BAR GAME BAR BEST <<< $USER
    echo "Welcome back, $USERNAME! You have played $GAME games, and your best game took $BEST guesses."  
    echo -e "\nGuess the secret number between 1 and 1000:\n"
    PLAY $RAN_NUM $UN
  fi  
}

PLAY() {
  (( C = C + 1 ))
  read NUMBER
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    PLAY $1 $2
  else
    if [[ "$NUMBER" < $1 ]]
    then
      echo "It's higher than that, guess again:"
      PLAY $1 $2
    elif [[ "$NUMBER" > $1 ]]    
    then
      echo "It's lower than that, guess again:"
      PLAY $1 $2
    else
      echo "You guessed it in $C tries. The secret number was $1. Nice job!" 
      INSERT $2 $C 
    fi
  fi    
}

INSERT() {
  USER_EXIT=$($PSQL "SELECT username FROM games WHERE username = '$1';")
  if [[ -z $USER_EXIT ]]
  then
    INSERT_NEW=$($PSQL "INSERT INTO games(username, game, best) VALUES('$1', 1, $2);")
  else
    BEST=$($PSQL "SELECT best FROM games WHERE username = '$1';")
    if [[ $BEST > $2 ]]
    then
      INSERT_GAME=$($PSQL "UPDATE games SET game = game + 1 WHERE username = '$1';")
    else
      INSERT_NEW_RECORD=$($PSQL "UPDATE games SET (game, best) = (game + 1, $2) WHERE username = '$1';") 
    fi
  fi       
}

#Thanks for program

USER
