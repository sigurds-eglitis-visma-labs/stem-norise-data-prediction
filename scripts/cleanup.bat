@echo off
REM ============================================
REM CLEANUP SCRIPT - Removes all created files
REM Improved version with safety checks
REM ============================================

echo ============================================
echo Cleaning up environment...
echo ============================================
echo.
echo This will remove:
echo - Virtual environment (venv folder)
echo - Generated images (*.png)
echo - Jupyter checkpoints
echo - Python cache files
echo.
echo Press Ctrl+C to cancel or any key to continue...
pause >nul
echo.

REM Remove virtual environment
if exist venv (
    echo [1/4] Removing virtual environment...
    rmdir /s /q venv
    echo       Done!
) else (
    echo [1/4] Virtual environment not found - skipping
)

REM Remove any generated images
if exist my_graphs\*.png (
    echo [2/4] Removing generated images...
    del /q my_graphs\*.png
    echo       Done!
) else (
    echo [2/4] No PNG files found - skipping
)

REM Remove Jupyter checkpoints
if exist .ipynb_checkpoints (
    echo [3/4] Removing Jupyter checkpoints...
    rmdir /s /q .ipynb_checkpoints
    echo       Done!
) else (
    echo [3/4] No Jupyter checkpoints found - skipping
)

REM Also check subdirectories for checkpoints
for /d /r %%i in (.ipynb_checkpoints) do (
    if exist "%%i" (
        rmdir /s /q "%%i"
    )
)

REM Remove __pycache__
if exist __pycache__ (
    echo [4/4] Removing Python cache...
    rmdir /s /q __pycache__
    echo       Done!
) else (
    echo [4/4] No Python cache found - skipping
)

echo.
echo ============================================
echo Cleanup complete!
echo ============================================
echo.
echo Your working directory is now clean.
echo To use the materials again, run: setup.bat
echo.
pause
