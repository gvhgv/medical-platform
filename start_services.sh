#!/bin/bash

# Medical Platform Service Startup Script for Linux/macOS
# Usage: ./start_services.sh

PROJECT_DIR="/path/to/medical-platform"
BACKEND_DIR="$PROJECT_DIR/医疗平台后端"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/service_startup.log"

# Create log directory if not exists
mkdir -p "$LOG_DIR"

log() {
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$TIMESTAMP] $1" | tee -a "$LOG_FILE"
}

log "=========================================="
log "Medical Platform Service Startup Script"
log "=========================================="

log "Step 1: Stopping existing services"

# Stop existing Node.js processes
if pgrep -x "node" > /dev/null; then
    log "Found running Node.js processes, terminating..."
    pkill -f "node"
    sleep 2
    log "Node.js processes terminated"
else
    log "No running Node.js processes found"
fi

log ""
log "Step 2: Starting backend service"
log "Backend directory: $BACKEND_DIR"

cd "$BACKEND_DIR"
log "Starting backend service..."
nohup node index.js > "$LOG_DIR/backend.log" 2>&1 &
BACKEND_PID=$!
echo $BACKEND_PID > "$LOG_DIR/backend.pid"
sleep 3

# Check backend status
if curl -s http://localhost:8081/api/ai/health > /dev/null; then
    log "Backend service started successfully"
else
    log "WARNING: Backend service may not be ready yet"
fi

log ""
log "Step 3: Starting frontend service"
log "Frontend directory: $PROJECT_DIR"

cd "$PROJECT_DIR"
log "Starting frontend development server..."
nohup npm run dev > "$LOG_DIR/frontend.log" 2>&1 &
FRONTEND_PID=$!
echo $FRONTEND_PID > "$LOG_DIR/frontend.pid"
sleep 3

# Check frontend status
if curl -s http://localhost:5173 > /dev/null; then
    log "Frontend service started successfully"
else
    log "WARNING: Frontend service may not be ready yet"
fi

log ""
log "=========================================="
log "Service startup completed"
log "Backend PID: $BACKEND_PID"
log "Frontend PID: $FRONTEND_PID"
log "Backend: http://localhost:8081"
log "Frontend: http://localhost:5173"
log "Log file: $LOG_FILE"
log "=========================================="