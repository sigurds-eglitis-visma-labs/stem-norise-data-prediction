#!/bin/bash
# ============================================
# SETUP SCRIPT - Datu vizualizacija un ekstrapolacija
# Bash version with error checking
# ============================================

echo "============================================"
echo "Setting up Python environment for the lesson"
echo "============================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "[ERROR] Python3 is not installed or not in PATH!"
    echo "Please install Python3:"
    echo "  Ubuntu/Debian: sudo apt-get install python3 python3-venv python3-pip"
    echo "  macOS: brew install python3"
    echo "  Or visit: https://www.python.org/downloads/"
    read -p "Press any key to exit..."
    exit 1
fi

# Display Python version
echo "Found Python:"
python3 --version
echo ""

# Check if venv already exists
if [ -d "venv" ]; then
    echo "[WARNING] Virtual environment already exists!"
    read -p "Press any key to recreate it, or Ctrl+C to cancel..."
    rm -rf venv
fi

# Create virtual environment
echo "[1/4] Creating virtual environment..."
python3 -m venv venv
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to create virtual environment!"
    read -p "Press any key to exit..."
    exit 1
fi

# Activate virtual environment
echo "[2/4] Activating virtual environment..."
source venv/bin/activate
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to activate virtual environment!"
    read -p "Press any key to exit..."
    exit 1
fi

# Upgrade pip first
echo "[3/4] Upgrading pip..."
python -m pip install --upgrade pip --quiet

# Install required packages
echo "[4/4] Installing required packages (this may take 2-3 minutes)..."
pip install --quiet jupyterlab pandas matplotlib numpy scikit-learn
if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to install packages!"
    echo "This usually means no internet connection."
    read -p "Press any key to exit..."
    exit 1
fi

echo ""
echo "============================================"
echo "Setup complete successfully!"
echo "============================================"
echo ""
echo "Installed packages:"
pip list | grep -E "jupyterlab|pandas|matplotlib|numpy|scikit-learn"
echo ""
echo "Next steps:"
echo "1. Run: ./scripts/start_jupyterlab.sh"
echo "2. Open: tasks/01_pamata_vizualizacija.ipynb"
echo ""
read -p "Press any key to continue..."
