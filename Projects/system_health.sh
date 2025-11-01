#!/bin/bash

# ------------------------------------------
# 🩺 Server Health Monitoring Script
# Author: Divesh Tayade
# ------------------------------------------

echo "------------------------------------------"
echo "🖥️  SERVER HEALTH REPORT - $(date)"
echo "------------------------------------------"

# Hostname and uptime
echo "Hostname          : $(hostname)"
echo "Uptime            : $(uptime -p)"
echo ""

# Load average
echo "[LOAD AVERAGE]"
uptime | awk -F'load average:' '{ print "Load Average:" $2 }'
echo ""

# CPU usage
echo "[CPU USAGE]"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load : " $2 + $4 "%"}'
echo ""

# Memory usage
echo "[MEMORY USAGE]"
free -h | awk '/Mem:/ {print "Used: "$3" / Total: "$2}'
echo ""

# Disk usage
echo "[DISK USAGE]"
df -h --total | grep 'total' | awk '{print "Used: "$3" / Total: "$2" ("$5" used)"}'
echo ""

# Logged-in users
echo "[LOGGED-IN USERS]"
who
echo ""

# Network information
echo "[NETWORK INFORMATION]"
ip=$(hostname -I | awk '{print $1}')
echo "IP Address        : $ip"
ping -c 1 8.8.8.8 &> /dev/null && echo "Internet Status    : ✅ Connected" || echo "Internet Status    : ❌ Not Connected"
echo ""

# Top 5 memory-consuming processes
echo "[TOP 5 MEMORY-CONSUMING PROCESSES]"
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6
echo ""

echo "✅ Health check completed successfully!"
echo "------------------------------------------"
