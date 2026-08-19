#!/bin/bash
SEMAPHORE="/tmp/semaphore.lock"
t1=5
t2=2

for i in {1..3}; do
    echo "[$$] Tentative de verrouillage"
    while [ -f "$SEMAPHORE" ]; do
        echo "[$$] Verrouille, attente $t1 sec"
        sleep $t1
    done
    touch "$SEMAPHORE"
    echo "[$$] Verrouillage reussi pour $t2 sec"
    sleep $t2
    rm -f "$SEMAPHORE"
    echo "[$$] Verrou libere"
    sleep 1
done
