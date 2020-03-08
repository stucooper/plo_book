#!/bin/sh
# check that all the .txt files in this directory
# are in the contents.txt file
for i in *.txt
do
  grep $i contents.txt >/dev/null
  if [ $? != 0 ]
  then  
    echo $i missing
  fi
done
