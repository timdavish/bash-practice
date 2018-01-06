#!/usr/local/bin/bash
# Display the last 20 characters of an input file.

echo "$(tail -c 20 /dev/stdin)"
