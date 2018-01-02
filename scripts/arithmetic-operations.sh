#!/usr/local/bin/bash
# We provide you with expressions containing +,-,*,^, / and parenthesis. None of the numbers in the expression involved will exceed 999.
# Your task is to evaluate the expression and display the output correct to 3 decimal places.

read expression

# Use printf to do the rounding, since bc just truncates
printf "%.3f" $(echo "$expression" | bc -l)
