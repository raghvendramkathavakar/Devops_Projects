#!/bin/bash

# -----------------------------
# Nginx Log Backup Script
# -----------------------------

# Define the source directory containing Nginx log files
SOURCE="/var/log/nginx"

# Define the directory where backup files will be stored
BACKUP_DIR="/home/ubuntu/backups"

# Create the backup directory if it does not already exist
mkdir -p "$BACKUP_DIR"

# Generate a timestamp in YYYY-MM-DD-HH-MM-SS format
# This ensures each backup file has a unique name
DATE=$(date +"%Y-%m-%d-%H-%M-%S")

# Create a compressed archive (.tar.gz) of the Nginx logs
# Backup file name example:
# nginx-2026-10-10-22-30-45.tar.gz
tar -czf "$BACKUP_DIR/nginx-$DATE.tar.gz" "$SOURCE"

# Display success message to the user
echo "Backup completed successfully."

# Display the name of the generated backup file
echo "Backup file: nginx-$DATE.tar.gz"