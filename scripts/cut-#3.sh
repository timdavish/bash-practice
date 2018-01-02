#!/usr/local/bin/bash
# Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).

echo "$(cut -c2-7 /dev/stdin)"
