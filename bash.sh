#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt-get update -y && sudo apt-get upgrade -y

# Log the update status
echo "System update completed at $(date)" | tee -a /var/log/system_update.log

# Check disk space usage
echo "Checking disk space..."
df -h | tee -a /var/log/system_update.log

echo "Script execution completed successfully."
exit 0
