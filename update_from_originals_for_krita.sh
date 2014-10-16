#!/bin/bash

for i in `ls *~`
do
exiftool -overwrite_original -tagsFromFile $i `basename $i "~"`
done

rm *~
