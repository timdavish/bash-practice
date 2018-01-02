#!/usr/local/bin/bash
# Display the 2nd and 7th character from each line of text.

echo "$(cut -c2,7 /dev/stdin)"
