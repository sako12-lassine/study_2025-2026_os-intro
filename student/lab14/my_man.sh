#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commande>"
    exit 1
fi
MAN_DIR="/usr/share/man/man1"
CMD="$1"
MAN_FILE="$MAN_DIR/$CMD.1.gz"

if [ -f "$MAN_FILE" ]; then
    echo "=== Manuel de $CMD ==="
    zcat "$MAN_FILE" | head -30
else
    echo "Commande $CMD non trouvee"
fi
