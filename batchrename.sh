#!/bin/bash

function rename_files {
  local dir=$1
  local orig_ext=$2
  local new_ext=$3

  for file in "$dir"/*."$orig_ext"; do
    new_file="${file%.*}.$new_ext"
    echo "Перейменовую $file на $new_file"
    mv "$file" "$new_file"
  done
}

rename_files "$1" "$2" "$3"
