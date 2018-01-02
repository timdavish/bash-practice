#!/usr/local/bin/bash
# Read in one character from the user (this may be 'Y', 'y', 'N', 'n'). If the character is 'Y' or 'y' display "YES". If the character is 'N' or 'n' display "NO". No other character will be provided as input.

read char

if [[ "$char" == "n" || "$char" == "N" ]] ; then
  echo 'NO'
elif [[ "$char" == "y" || "$char" == "Y" ]] ; then
  echo 'YES'
else
  echo "Allowed input: 'Y', 'y', 'N', 'n'."
fi
