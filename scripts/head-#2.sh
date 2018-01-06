#!/usr/local/bin/bash
# Display the first 20 characters of an input file.

echo "$(head -c 20 /dev/stdin)"
