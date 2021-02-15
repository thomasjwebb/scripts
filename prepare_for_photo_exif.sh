#!/bin/bash

rm *~
mkdir jpg
mogrify -resize "6000x6000>" -format jpg -quality 100 -path jpg *.tif

for i in `ls *.tif`
do
exiftool -overwrite_original -tagsFromFile $i jpg/`basename $i "tif"`jpg
done
