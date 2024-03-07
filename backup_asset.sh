#!/bin/bash

# Define the backup directory
backup_dir="/path/to/backup"

# Create the backup directory if it doesn't exist
mkdir -p $backup_dir

# Archive the work directory and compress it
timestamp=$(date +'%Y%m%d_%H%M%S')
backup_filename="backup_${timestamp}.tar.gz"

tar czf "${backup_dir}/${backup_filename}" /path/to/your/work/directory

echo "Backup created: ${backup_dir}/${backup_filename}"