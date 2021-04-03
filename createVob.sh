#!/bin/bash

# cf. https://ffmpeg.org/ffmpeg.html#Main-options --> pal-dvd
#pal:
#-f dvd -muxrate 10080k -packetsize 2048
#-s 720x576 -pix_fmt yuv420p -r 25
#-codec:v mpeg2video -g 15 -b:v 6000k -maxrate:v 9000k -minrate:v 0 -bufsize:v 1835008
#-ar 48000
#-codec:a ac3 -b:a 448k

ffmpeg -i ./$1.mpg -c:v copy -c:a copy -target pal-dvd ./$1.VOB
