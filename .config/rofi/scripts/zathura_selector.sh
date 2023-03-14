#!/bin/sh
# https://github.com/miraclespringwater
# Script to open pdf's with zathura using rofi

doc_dir=$HOME/doc

_zathura() {
    zathura "$1" &
    disown
}

# find regular file (-type f) in doc_dir with name of *.pdf
selected=$(find "$doc_dir" -type f \( -name "*.pdf" -o -name "*.epub" \)| rofi -dmenu -i -matching fuzzy -no-custom -location 0 -p "Open PDF")

# if length of string is 0 (-z flag)
if [ -z "$selected" ]; then
  exit
fi

# run zathura and disown process
_zathura "$selected"
