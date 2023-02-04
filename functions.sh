#!/bin/bash

function err() {
  echo "Directorio inválido"
  exit 1
}

function validate_dir() {
  if [ ! -d "$1" ]; then
    err
  else
    echo "$1"
  fi
}

function enter_directory() {
  directory="/home/hecdelatorre/Pictures/r-wallpapers"
  validate_dir "$directory"
}

function select_image() {
  directoryArray=($(ls "$1"))
  directorys=()
  c=0

  for image in "${directoryArray[@]}"; do
    if [ -f "$1/$image" ]; then
      extension="${image##*.}"
      extension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')
      if [[ "$extension" == "jpg" || "$extension" == "jpeg" || "$extension" == "png" || "$extension" == "bmp" ]]; then
        directorys+=("$1/$image")
        c=$((c+1))
      fi
    fi
  done

  if [ ${#directorys[@]} -eq 0 ]; then
    exit 1
  fi

  echo "${directorys[@]}"
  echo "$c"
}

function r_number() {
  ran_number=$((RANDOM%$1))
  echo "$ran_number"
}

function del_image() {
  rm -f "/home/hecdelatorre/Pictures/wallpaper.jpg"
}

function set_wallpaper() {
  ln "$1" "/home/hecdelatorre/Pictures/wallpaper.jpg"
}
