#!/bin/bash
# Script imitant la commande ls

DIR=${1:-.}  # Répertoire par défaut = courant

if [ ! -d "$DIR" ]; then
    echo "Erreur : $DIR n'est pas un répertoire"
    exit 1
fi

echo "Contenu de $DIR :"
echo ""

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        if [ -r "$file" ]; then echo -n "r"; else echo -n "-"; fi
        if [ -w "$file" ]; then echo -n "w"; else echo -n "-"; fi
        if [ -x "$file" ]; then echo -n "x"; else echo -n "-"; fi
        echo " $(basename "$file")"
    elif [ -d "$file" ]; then
        echo "d $(basename "$file")/"
    fi
done
