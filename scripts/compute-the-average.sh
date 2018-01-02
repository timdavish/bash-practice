#!/usr/local/bin/bash
# Given N integers, compute their average correct to three decimal places.

read N

for i in $(seq 1 $N) ; do
  read int
  total=$(($total + $int))
done

# Use printf to do the rounding, since bc just truncates
printf "%.3f" $(echo "$total / $N" | bc -l)
