#!/usr/local/bin/bash
# Given a tab delimited file with several columns (tsv format) print the fields from second fields to last field.

echo "$(cut -f2- -d$'\t' /dev/stdin)"
