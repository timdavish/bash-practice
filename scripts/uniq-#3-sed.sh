#!/usr/local/bin/bash
# Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. Compare consecutive lines in a case insensitive manner.

uniq -ci | sed -e 's/^[ ]*//'
