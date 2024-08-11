#!/bin/sh
echo 'You are dying. 1=live'
read PROMPT
if [$PROMPT == "1"]:
then
  echo "You won"
  exit 1
else
  echo "You died"
  exit 2
fi
