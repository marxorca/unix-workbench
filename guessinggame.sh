#!/usr/bin/env bash

nfiles=$(find . -maxdepth 1 -type f | wc -l)

while true
do
  read -p "How many files exist in the directory" guess
  if [[ $guess -lt $nfiles ]]
  then
    echo "Too low!"
  elif [[ $guess -gt $nfiles ]]
  then
    echo "Too high!"
  else
    echo "You are guess"
	break
  fi
done
