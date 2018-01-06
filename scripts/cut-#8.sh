#!/usr/local/bin/bash
# Given a sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words.

echo "$(cut -f1-3 -d' ' /dev/stdin)"
