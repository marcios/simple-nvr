#!/bin/bash
current_month=$(date +'%m')
current_year=$(date +'%Y')
current_day=$(date +'%d')
file_folder=~/apps/simple-nvr/save-videos/example-camera-name
full_dest_folder="$file_folder/$current_year/$current_month"

#echo $full_dest_folder

if [ -d $full_dest_folder ]; then
    cd $full_dest_folder
    for dir in *; do
        echo "Diretorio corrente: $dir\n"
        echo "Diretorio mes corrente: $current_day\n"
        
        if [ $dir != $current_day ]; then
            echo "Remover o diretorio $dir"
            rm -rf $dir
        fi
    done
    #echo "diretorio existe"
     #echo $full_dest_folder
fi
