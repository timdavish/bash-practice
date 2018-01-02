#!/usr/local/bin/bash
# Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.

echo "$(cut -f4 -d' ' /dev/stdin)"
