@echo off
echo You are dying. 1=live
set /p u=
if "%u%"=="1" (echo You won) else (echo You died)