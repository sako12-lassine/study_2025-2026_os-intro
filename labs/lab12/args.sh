#!/bin/bash
# Script affichant tous les arguments

echo "Nombre d'arguments : $#"
echo "Tous les arguments : $@"
echo "Liste des arguments :"

for arg in "$@"; do
    echo "  - $arg"
done
