@echo off

IF "%1" EQU "" (
    ECHO Waiting for the command
) ELSE (
    IF "%1" EQU "compose" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" "%2"
        )
    )
    IF "%1" EQU "down" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" down
    )
    IF "%1" EQU "recreate" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" up -d --build --force-recreate --remove-orphans
    )
    IF "%1" EQU "watch" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run node npm run watch-poll
    )
    IF "%1" EQU "npm" (
        IF "%2" EQU "i" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run node npm i
        )
    )
    IF "%1" EQU "node" (
        IF "%2" EQU "-v" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run node -v
        )
    )
    IF "%1" EQU "composer" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" exec php composer install
    )
    IF "%1" EQU "artisan" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" exec php php artisan "%2"
        )
    )
)