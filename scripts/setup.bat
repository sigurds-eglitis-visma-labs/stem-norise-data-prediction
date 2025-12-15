@echo off
REM ============================================
REM SETUP SCRIPT - Datu vizualizacija un ekstrapolacija
REM Improved version with error checking
REM ============================================

echo ============================================
echo Setting up Python environment for the lesson
echo ============================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in PATH!
    echo Please install Python from: https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation
    pause
    exit /b 1
)

REM Display Python version
echo Found Python:
python --version
echo.

REM Check if venv already exists
if exist venv (
    echo [WARNING] Virtual environment already exists!
    echo Press any key to recreate it, or Ctrl+C to cancel...
    pause
    rmdir /s /q venv
)

REM Create virtual environment
echo [1/4] Creating virtual environment...
python -m venv venv
if errorlevel 1 (
    echo [ERROR] Failed to create virtual environment!
    pause
    exit /b 1
)

REM Activate virtual environment
echo [2/4] Activating virtual environment...
call venv\Scripts\activate.bat
if errorlevel 1 (
    echo [ERROR] Failed to activate virtual environment!
    pause
    exit /b 1
)

REM Upgrade pip first
echo [3/4] Upgrading pip...
python -m pip install --upgrade pip --quiet

REM Install required packages
echo [4/4] Installing required packages (this may take 2-3 minutes)...
pip install --quiet jupyterlab pandas matplotlib numpy scikit-learn
if errorlevel 1 (
    echo [ERROR] Failed to install packages!
    echo This usually means no internet connection.
    pause
    exit /b 1
)

echo.
echo ============================================
echo Setup complete successfully!
echo ============================================
echo.
echo Installed packages:
pip list | findstr "jupyterlab pandas matplotlib numpy scikit-learn"
echo.
echo Next steps:
echo 1. Run: start_jupyterlab.bat
echo 2. Open: tasks\01_pamata_vizualizacija.ipynb
echo.
pause
