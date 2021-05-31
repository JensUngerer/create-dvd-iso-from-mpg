#!/bin/bash
# https://stackoverflow.com/questions/2270081/bash-script-calls-another-bash-script-and-waits-for-it-to-complete-before-procee/20094565
# https://stackoverflow.com/questions/3362920/get-just-the-filename-from-a-path-in-a-bash-script/3362952
# filename=$(basename -- "$1")
# extension="${filename##*.}"
# filename="${filename%.*}"

# base=$filename

# echo creating $base.iso
# . createVob.sh $base
# . createFolder.sh $base
# . finishFolder.sh $base
# . generateIsoImage.sh $base
# . burnDvd.sh $base

# echo "romoving temp data"
# rm ./$base.VOB
# rm -rf ./$base

# echo "creating files for mounting / umounting $base.iso"
# echo mount ./$base.iso /media/iso/ -o loop > ./mount$base.sh
# chmod a+x ./mount$base.sh
# echo umount /media/iso > ./umount$base.sh
# chmod a+x ./umount$base.sh
