#!/usr/local/bin/bash
# Display the lines (from line number 12 to 22, both inclusive) of a given text file.

echo "$(head -n 22 | tail -n +12 /dev/stdin)"
