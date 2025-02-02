#!/bin/bash

# Path to the nginx access log file
LOG_FILE="access.log"

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found!"
  exit 1
fi

# Top 5 IP addresses with the most requests
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

# Top 5 most requested paths
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

# Top 5 response status codes
echo -e "\nTop 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

# Top 5 user agents
echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5 | awk '{$1=""; print $0}' | sed 's/^ //'

