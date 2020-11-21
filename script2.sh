#!/bin/bash
echo "Hello welcome to my script"
firstline=$(head -n1 ./source/changelog.md)
#echo $firstline
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo $version

echo "Do you want to continue? (enter /'1/' for yes, /'0' for no)"
read versioncontinue
if [ $versioncontinue -eq 1 ]
then
  echo "OK"
  filename=./source/*
  for file in $filename
  do
    echo $file
    if [ $file == "./source.secretinfo.md" ]
    then
      echo "do not copy $file"
    else
       echo "copy $file"
    fi
  done

else
  echo "Please come back when you are ready"
fi