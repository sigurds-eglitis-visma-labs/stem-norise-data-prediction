@echo off
REM ============================================
REM START JUPYTERLAB
REM ============================================

echo Starting JupyterLab...
call venv\Scripts\activate.bat
jupyter lab
