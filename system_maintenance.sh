#!/bin/bash
# System Maintenance Automation Script
# Author: Rajesh M
# Purpose: Automate routine system tasks like cleaning temp files, archiving logs, and monitoring disk usage

echo "===== System Maintenance Script ====="

echo "Cleaning temporary files..."
rm -rf /tmp/*
echo "Temporary files cleaned."

echo "Archiving system logs..."
mkdir -p ~/logs_backup
tar -czf ~/logs_backup/logs_$(date +%F).tar.gz /var/log/*.log 2>/dev/null
echo "Logs archived in ~/logs_backup/"

echo "Checking disk usage..."
df -h | grep '^/dev/'

echo "System maintenance completed successfully!"
echo "====================================="
