#!/bin/bash

# ==============================================
# Server Health Check Script
# Purpose:
# Collects and displays important server metrics
# such as hostname, uptime, memory, disk usage,
# CPU load, top processes, and Nginx status.
# ==============================================

# Print header line
echo "================================"

# Display script title
echo "      SERVER HEALTH CHECK"

# Print header line
echo "================================"

# Print a blank line for better readability
echo ""

# Display section title
echo "Hostname:"

# Show the server hostname
hostname

# Print a blank line
echo ""

# Display section title
echo "Uptime:"

# Show system uptime and current load averages
uptime

# Print a blank line
echo ""

# Display section title
echo "Memory:"

# Show memory usage in human-readable format (MB, GB)
free -h

# Print a blank line
echo ""

# Display section title
echo "Disk:"

# Show disk space usage for the root (/) filesystem
df -h /

# Print a blank line
echo ""

# Display section title
echo "CPU Load:"

# Extract only the load average values from uptime output
uptime | awk -F'load average:' '{print $2}'

# Print a blank line
echo ""

# Display section title
echo "Top CPU Processes:"

# Show top 5 processes consuming CPU
# ps aux       -> Lists all running processes
# --sort=-%cpu -> Sort by CPU usage in descending order
# head -6      -> Show header + top 5 processes
ps aux --sort=-%cpu | head -6

# Print a blank line
echo ""

# Display section title
echo "Nginx Status:"

# Check whether Nginx service is running
# Output examples:
# active   -> Running
# inactive -> Stopped
# failed   -> Failed
systemctl is-active nginx

# Print a blank line
echo ""

# Print footer line
echo "================================"

# Display completion message
echo "      CHECK COMPLETED"

# Print footer line
echo "================================"