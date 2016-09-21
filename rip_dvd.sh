mencoder dvd:// -vf crop=720:464:0:8,scale=720:464 -ovc xvid -xvidencopts vhq=4:bvhq=1:chroma_opt:quant_type=mpeg:bitrate=1800:pass=1 -oac copy -o /dev/null
mencoder dvd:// -vf crop=720:464:0:8,scale=720:464 -ovc xvid -xvidencopts vhq=4:bvhq=1:chroma_opt:quant_type=mpeg:bitrate=1800:pass=2 -alang en -slang en -oac mp3lame -lameopts br=96:cbr:vol=6 -o Poo.avi

or
mplayer dvd://1 -chapter 3 -vf cropdetect
(use output to determine crop settings, below)
mencoder dvd://1 -vf crop=720:416:0:80,scale=704:304 -ovc xvid -xvidencopts bvhq=1:chroma_opt:quant_type=mpeg:bitrate=658:pass=1 -oac copy -o /dev/null
mencoder dvd://1 -vf crop=720:416:0:80,scale=704:304 -ovc xvid -xvidencopts bvhq=1:chroma_opt:quant_type=mpeg:bitrate=658:pass=2 -alang en -oac mp3lame -lameopts br=96:cbr:vol=6 -o X-Men-2.avi
