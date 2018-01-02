#!/usr/local/bin/bash
# Print the characters from 13th position to the end.

echo "$(cut -c13- /dev/stdin)"
