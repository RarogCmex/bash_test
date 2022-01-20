#!/bin/bash
#
# Take 1 character from keyboard and print one's type

read -sn 1 CHAR # Takes exactly 1 character from keyboard
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
# See POSIX character classes.