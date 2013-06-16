#!/bin/sh

# Goes through all jpeg files in current directory, grabs date from each
# and sorts them into subdirectories according to the date
# Creates subdirectories corresponding to the dates as necessary.

for file in $(find . -type f)
do
    datepath="$(stat -f %c $file | xargs -J @ date -r @ +'%Y/%m')"
    if ! test -e "$datepath"; then
        mkdir -pv "$datepath"
    fi

    mv -v $file $datepath
done

