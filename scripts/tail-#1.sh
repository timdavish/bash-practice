#!/usr/local/bin/bash
# Display the last 20 lines of an input file.

echo "$(tail -n 20 /dev/stdin)"
