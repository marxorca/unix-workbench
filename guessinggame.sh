function readNumber(){
while true; do
  read -p "How many files exists in the directry: " number
  if echo "$number" | egrep -q '^[0-9]+$'
  then
    break
  fi
done
}

nfiles=$(ls -A | wc -l)
while true
do
  readNumber
  if [[ $number -lt $nfiles ]]
  then
    echo "Too low!"
  elif [[ $number -gt $nfiles ]] 
  then
    echo "Too high!"
  else
    echo "Congratulations you are guessed!"
    break
  fi
done

    
