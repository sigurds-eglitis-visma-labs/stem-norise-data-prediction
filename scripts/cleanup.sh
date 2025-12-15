#!/bin/bash
# ============================================
# CLEANUP SCRIPT - Removes all created files
# Bash version with safety checks
# ============================================

echo "============================================"
echo "Cleaning up environment..."
echo "============================================"
echo ""
echo "This will remove:"
echo "- Virtual environment (venv folder)"
echo "- Generated images (my_graphs/*.png)"
echo "- Jupyter checkpoints"
echo "- Python cache files"
echo ""
read -p "Press Ctrl+C to cancel or Enter to continue..."
echo ""

# Remove virtual environment
if [ -d "venv" ]; then
    echo "[1/4] Removing virtual environment..."
    rm -rf venv
    echo "      Done!"
else
    echo "[1/4] Virtual environment not found - skipping"
fi

# Remove any generated images
if ls my_graphs/*.png 1> /dev/null 2>&1; then
    echo "[2/4] Removing generated images..."
    rm -f my_graphs/*.png
    echo "      Done!"
else
    echo "[2/4] No PNG files found - skipping"
fi

# Remove Jupyter checkpoints
if [ -d ".ipynb_checkpoints" ]; then
    echo "[3/4] Removing Jupyter checkpoints..."
    rm -rf .ipynb_checkpoints
    echo "      Done!"
else
    echo "[3/4] No Jupyter checkpoints found - skipping"
fi

# Also check subdirectories for checkpoints
find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} + 2>/dev/null

# Remove __pycache__
if [ -d "__pycache__" ]; then
    echo "[4/4] Removing Python cache..."
    rm -rf __pycache__
    echo "      Done!"
else
    echo "[4/4] No Python cache found - skipping"
fi

# Also remove pycache from subdirectories
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null

echo ""
echo "============================================"
echo "Cleanup complete!"
echo "============================================"
echo ""
echo "Your working directory is now clean."
echo "To use the materials again, run: ./scripts/setup.sh"
echo ""
read -p "Press any key to continue..."
