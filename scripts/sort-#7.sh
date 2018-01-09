#!/usr/local/bin/bash
# You are given a file of pipe-delimited weather data (TSV). You need to sort this file in descending order of the second column (i.e. the average monthly temperature in January).

sort -t$'|' -k2 -rn
