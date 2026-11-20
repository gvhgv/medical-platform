#!/bin/bash

# Medical Platform Service Stop Script for Linux/macOS
# Usage: ./stop_services.sh

PROJECT_DIR="/path/to/medical-platform"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/service_stop.log"

mkdir -p "$LOG_DIR"

log() {
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$TIMESTAMP] $1" | tee -a "$LOG_FILE"
}

log "=========================================="
log "Medical Platform Service Stop Script"
log "=========================================="

log "Stopping all Node.js processes..."

if pgrep -x "node" > /dev/null; then
    pkill -f "node"
    if [ $? -eq 0 ]; then
        log "Successfully stopped Node.js processes"
    else
        log "ERROR: Failed to stop Node.js processes"
        exit 1
    fi
else
    log "No running Node.js processes found"
fi

# Clean up PID files
rm -f "$LOG_DIR/backend.pid"
rm -f "$LOG_DIR/frontend.pid"

log ""
log "=========================================="
log "Service stop completed"
log "=========================================="