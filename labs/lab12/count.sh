#!/bin/bash
# Compte les fichiers par extension

if [ $# -ne 2 ]; then
    echo "Usage: $0 <extension> <repertoire>"
    echo "Exemple: $0 .txt /home"
    exit 1
fi

EXT=$1
DIR=$2

if [ ! -d "$DIR" ]; then
    echo "Erreur : $DIR n'est pas un répertoire"
    exit 1
fi

count=$(find "$DIR" -type f -name "*$EXT" 2>/dev/null | wc -l)
echo "Nombre de fichiers avec l'extension $EXT dans $DIR : $count"
