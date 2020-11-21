#!/bin/bash
./script.sh 5 #greets 5 times
#write this in the bash profile alias greet3="./script.sh 3"

first_greeting="Nice to meet you!"
later_greeting="How are you?"
greeting_occasion=0
echo "How many times should I greet?"
read number
echo "Wow $number times!!!"
greeting_limit=$number

while [ $greeting_occasion -lt $greeting_limit ]
do
  if [ $greeting_occasion -lt 1 ]
  then
    echo $first_greeting
  else
    echo $later_greeting
  fi
  greeting_occasion=$((greeting_occasion + 1))
done
 