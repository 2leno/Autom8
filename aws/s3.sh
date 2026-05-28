#!/bin/bash

BUCKET=$1
SOURCE=$2

if [ -z "$BUCKET" ] || [ -z "$SOURCE" ]; then
    echo "❌ Usage: ./s3.sh <bucket-name> <source-dir>"
    exit 1
fi

aws s3 sync "$SOURCE" "s3://$BUCKET/backups/$(date +%Y%m%d)/"
echo "✅ Synchronisation terminée vers s3://$BUCKET"