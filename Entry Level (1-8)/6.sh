#!/bin/bash

read -sn 1 CHAR
#Takes character from keyboard

case $CHAR in
  [[:lower:]] )
    echo "Lowercase character"
    ;;
  [[:upper:]] )
    echo "Uppercase character"
    ;;
  [[:digit:]] )
    echo "Number"
    ;;
  [[:cntrl:]] )
    echo "Control character"
    ;;
  [[:punct:]] )
    echo "Punctuation character"
    ;;
  * )
    echo "Space or something else"
    ;;
esac	
