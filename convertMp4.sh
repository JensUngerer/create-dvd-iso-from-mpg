#!/bin/bash
# https://stackoverflow.com/questions/2270081/bash-script-calls-another-bash-script-and-waits-for-it-to-complete-before-procee/20094565
# https://stackoverflow.com/questions/3362920/get-just-the-filename-from-a-path-in-a-bash-script/3362952
rawFileName=$1
filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

base=$filename

echo $rawFileName
echo $base.VOB

ffmpeg -i $rawFileName -target pal-dvd ./$base.VOB && rm $rawFileName
