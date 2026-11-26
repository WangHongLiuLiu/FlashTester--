@echo off
setlocal
cd /d "%~dp0"
where cargo >nul 2>nul
if errorlevel 1 (
  echo Rust/Cargo not found. Install Rust from https://rustup.rs/ and reopen this window.
  pause
  exit /b 1
)
cargo build --release
if errorlevel 1 (
  echo Build failed. Copy the complete error output when asking for help.
  pause
  exit /b 1
)
echo.
echo Build completed: target\release\flashtester.exe
pause
