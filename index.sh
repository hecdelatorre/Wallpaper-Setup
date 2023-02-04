#!/bin/bash

source functions.sh

function main() {
    en_directory=$(enter_directory)
    image=($(select_image "$en_directory"))
    count="${image[-1]}"
    image=("${image[@]:0:${#image[@]}-1}")
    ran_number=$(r_number "$count")
    del_image
    set_wallpaper "${image[$ran_number]}"
}

if [ "${0##*/}" == "index.sh" ]; then
    main
fi
