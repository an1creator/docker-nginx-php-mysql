@echo off

if [%1]==[] goto usage

set args=%*
for /f "tokens=1,* delims= " %%a in ("%*") do set args=%%b

IF NOT "%1" EQU "" (
    docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" exec php php %*
    exit /B 1
)