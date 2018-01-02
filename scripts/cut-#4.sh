#!/usr/local/bin/bash
# Display the first 4 characters from each line of text.

echo "$(cut -c1-4 /dev/stdin)"
