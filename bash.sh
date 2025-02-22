#!/bin/bash

# Updating system packages (without sudo)
echo "Updating system packages..."
apt-get update -y && apt-get upgrade -y

# Logging in Jenkins workspace (instead of /var/log/)
LOG_FILE="system_update.log"
echo "System update completed at $(date)" | tee -a "$LOG_FILE"

# Check disk space usage
echo "Checking disk space..."
df -h | tee -a "$LOG_FILE"

echo "Script execution completed successfully."
exit 0
