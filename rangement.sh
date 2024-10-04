#!/bin/bash

dossier_source="/home/web1/Bureau/"

mkdir -p "$dossier_source/Medias"
mkdir -p "$dossier_source/Docs"
mkdir -p "$dossier_source/Travail"
mkdir -p "$dossier_source/Autres"

echo "$dossier_source"

for file in "$dossier_source"/*; do

    if [[ -f $file  ]]; then

        extension="${file##*.}"

        case $extension in
            jpg|png|mp4)
            mv "$file" "$dossier_source/Medias/"
            ;;
            docx|pptx|txt|pdf)
            mv "$file" "$dossier_source/Docs/"
            ;;
            log|sh|csv)
            mv "$file" "$dossier_source/Travail/"
            ;;
            *)
            mv "$file" "$dossier_source/Autres/"
            ;;
        esac
    fi
done

echo Fichiers triés avec succès.