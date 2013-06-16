#!/bin/sh

# Goes through all jpeg files in current directory, grabs date from each
# and sorts them into subdirectories according to the date
# Creates subdirectories corresponding to the dates as necessary.

find . -type f -exec sh -c '
  file="$0"
  echo $file
  datepath=`stat -f %c "$file" | xargs -J @ date -r @ +"%Y/%m"`
  if ! test -e "$datepath"; then
      mkdir -pv "$datepath"
  fi

  mv -v "$file" ./$datepath
' {} ';'
