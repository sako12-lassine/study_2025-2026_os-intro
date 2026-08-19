#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <archive_name.tar.gz>"
    exit 1
fi

DIR=$1
ARCHIVE=$2

if [ ! -d "$DIR" ]; then
    echo "Error: directory $DIR does not exist"
    exit 1
fi

# Archive all files modified in the last 7 days
find "$DIR" -type f -mtime -7 -print0 | tar -czvf "$ARCHIVE" --null -T -

echo "Archive created: $ARCHIVE"
ls -lh "$ARCHIVE"
