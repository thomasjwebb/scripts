#!/bin/sh

for f in *.flac; do ffmpeg -i "$f" -acodec alac -vn "${f%.flac}.m4a"; done
