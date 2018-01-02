#!/usr/local/bin/bash
# Given a tab delimited file with several columns (tsv format) print the first three fields.

# The 'tab' character is the default character used with -d (delimiter)
echo "$(cut -f1-3 /dev/stdin)"
