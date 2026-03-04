#!/bin/bash
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="/home/devopsuser/nginx_backup"
mkdir -p $BACKUP_DIR
sudo cp -r /etc/nginx $BACKUP_DIR/nginx_$TIMESTAMP
echo "Backup complete: nginx_$TIMESTAMP"
