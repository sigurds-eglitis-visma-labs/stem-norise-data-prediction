#!/bin/bash
# ============================================
# START JUPYTERLAB
# ============================================

echo "Starting JupyterLab..."

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "[ERROR] Virtual environment not found!"
    echo "Please run ./scripts/setup.sh first"
    exit 1
fi

# Activate virtual environment and start JupyterLab
source venv/bin/activate
jupyter lab
