#!/bin/bash
#
# Simulates 700 (ROLLS_MAX) dice rolls, summarize statistics
# Russian-language output

ROLLS_MAX=700
ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0
roll=0

while [ "$roll" -lt "$ROLLS_MAX" ]; do
  let "current_res = $RANDOM % 6"
  case $current_res in 
    0) let "ones += 1" ;;
    1) let "twos += 1" ;;
    2) let "threes += 1" ;;
    3) let "fours += 1" ;;
    4) let "fives += 1" ;;
    5) let "sixes += 1" ;;
    esac
  let "roll += 1"
done
echo "единиц   = $ones"
echo "двоек    = $twos"
echo "троек    = $threes"
echo "четверок = $fours"
echo "пятерок  = $fives"
echo "шестерок = $sixes"
