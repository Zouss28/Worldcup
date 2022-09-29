#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams,games")
cat games.csv | while IFS=',' read YEAR ROUND WIN OP WIN_G OP_G
do 
  if [[ $YEAR != year ]]
  then
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WIN'")
    OP_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OP'")
    if [[ -z $WIN_ID ]]
    then
      INSERT_WIN=$($PSQL "INSERT INTO teams(name) VALUES('$WIN')")
      WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WIN'")
    fi
    if [[ -z $OP_ID ]]
    then
      INSERT_OP=$($PSQL "INSERT INTO teams(name) VALUES('$OP')")
      OP_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OP'")
    fi
    echo $($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES($YEAR,'$ROUND',$WIN_G,$OP_G,$WIN_ID,$OP_ID)")
  fi
done