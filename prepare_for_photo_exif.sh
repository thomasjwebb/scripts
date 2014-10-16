#!/bin/bash

rm *~
mogrify -format jpg *.tif
mkdir jpg
mv *.jpg jpg
cd jpg/
mogrify -resize 800x800 *.jpg

