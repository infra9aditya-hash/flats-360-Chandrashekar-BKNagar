@echo off
cd /d "%~dp0"
set PYCMD=py
where py >nul 2>nul || set PYCMD=python
start "Tour server (close this window to stop)" /min %PYCMD% -m http.server 8000
timeout /t 2 >nul
start "" http://localhost:8000/index.html
