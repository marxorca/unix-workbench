#!/usr/bin/env bash

function correct_guess {        # One function...
    if [[ $1 -lt $2 ]]          # One if statement ...
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    else
        echo "Used adivino"
    fi
}


nFiles=$(ls | wc -l)


echo "Cuantos archivos existen existen en el direcotrio?"
read count

echo $(correct_guess $count $nFiles)

while [[ $count -ne $nFiles ]]    # One loop...
do
    read -p "Cuántos archivos existen en el directorio? " count
    # echo "You entered: $guess"
    echo $(correct_guess $count $nFiles) 
    echo ""
done


