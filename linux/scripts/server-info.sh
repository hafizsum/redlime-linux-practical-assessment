#!/bin/bash

LOG_FILE="$HOME/server-info.log"

{
    echo "======================================"
    echo "       UBUNTU SERVER INFORMATION"
    echo "======================================"

    echo "Hostname: $(hostname)"
    echo "Date: $(date)"

    echo ""
    echo "----- DISK USAGE -----"
    df -h /

    echo ""
    echo "----- MEMORY USAGE -----"
    free -h

    echo ""
    echo "----- SYSTEM UPTIME -----"
    uptime

    echo ""
    echo "======================================"

} | tee "$LOG_FILE"