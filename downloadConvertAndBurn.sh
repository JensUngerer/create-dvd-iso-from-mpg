#!/bin/bash
# e.g.: ./downloadConvertAndBurn.sh https://www.youtube.com/watch?v=9uDgJ9_H0gg 2021-05-30
url=$1
base=$2

echo downloading $url, creating $base.iso and burning it
. downloadVideo.sh $url $base
# https://unix.stackexchange.com/questions/417752/bash-script-extract-filename-from-ls-l-results
FILES=$(find . -type f -name "$base.*")
downloadedFileName=${FILES[0]}
echo $downloadedFileName
. convertMp4.sh $downloadedFileName
. createFolder.sh $base
. finishFolder.sh $base
. generateIsoImage.sh $base
echo "creating files for mounting / umounting $base.iso"
echo mount ./$base.iso /media/iso/ -o loop > ./mount$base.sh
chmod a+x ./mount$base.sh
echo umount /media/iso > ./umount$base.sh
chmod a+x ./umount$base.sh
read -p "Please press enter to continue with burning DVDs"
. burnDvd.sh $base
