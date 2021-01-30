#!/bin/sh

for f in *.flac; do ffmpeg -i "$f" -c:a alac -c:v copy -vn "${f%.flac}.m4a"; done
