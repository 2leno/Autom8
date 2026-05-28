#!/bin/bash
BACKUP_DIR="$HOME/backups"
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_FILE $HOME/Documents $HOME/scripts 2>/dev/null
echo "✅ Backup: $BACKUP_FILE"