#!/bin/bash

echo "Welcome to Taj Hotel!"
sleep 1
echo "Going Up"
sleep 1

for x in {1..17};
do
  if [[ $x == 13 ]]; then
    continue
  fi
    echo "Floor $x"
    sleep 1
done 
