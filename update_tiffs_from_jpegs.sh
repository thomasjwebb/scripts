#!/bin/bash

for i in `ls *.jpg`
do
exiftool -overwrite_original -tagsFromFile $i `basename $i "jpg"`tif
done

rm *.jpg
