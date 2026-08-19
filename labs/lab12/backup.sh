#!/bin/bash
# Script de sauvegarde du fichier lui-même

BACKUP_DIR=~/backup
mkdir -p "$BACKUP_DIR"

# Copie du script avec archivage tar
tar -czf "$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$0"

echo "✅ Sauvegarde effectuée dans $BACKUP_DIR"
ls -la "$BACKUP_DIR"
