#!/bin/bash

# Exit on any error
set -e

# Check if script is run as root (/opt is usually protected)
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root (use sudo) (/opt is usually protected)"
    exit 1
fi

# Define paths
SOURCE_DIR="./registry"
TARGET_DIR="/opt/fusion/registry"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory $SOURCE_DIR not found"
    exit 1
fi

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# For split files, combine them before copying
find "$SOURCE_DIR" -name "*.part_*" | while read -r partfile; do
    basefile="${partfile%%.part_*}"
    if [ ! -f "$basefile" ]; then
        # Get all parts for this file and combine them
        cat "${basefile}".part_* > "$basefile"
        echo "Combined split files into $basefile"
    fi
done

# Copy all files preserving permissions and structure
cp -r "$SOURCE_DIR"/* "$TARGET_DIR/"

# Set proper permissions
chown -R root:root "$TARGET_DIR"
chmod -R 755 "$TARGET_DIR"

echo "Installation completed successfully"
echo "Registry files installed in $TARGET_DIR"