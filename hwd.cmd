@echo off

IF "%1" EQU "" (
    ECHO Waiting for the command
) ELSE (
    IF "%1" EQU "compose" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" %2 %3 %4 %5 %6 %7
        )
    )
    IF "%1" EQU "down" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" down
    )
    IF "%1" EQU "recreate" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" up -d --build --force-recreate --remove-orphans
    )
    IF "%1" EQU "watch" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run --rm node npm run watch
    )
    IF "%1" EQU "dev" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run --rm node npm run dev
    )
    IF "%1" EQU "prod" (
        docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run --rm node npm run prod
    )
    IF "%1" EQU "npm" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run --rm node %*
        )
    )
    IF "%1" EQU "node" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" run --rm node %*
        )
    )
    IF "%1" EQU "composer" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" exec php %*
        )
    )
    IF "%1" EQU "artisan" (
        IF NOT "%2" EQU "" (
            docker-compose -f "%~dp0\docker-compose.yml" --env-file "%~dp0\.env" exec php php %*
        )
    )
    IF "%1" EQU "logs" (
        IF NOT "%2" EQU "" (
            docker-compose logs -f %2
        )
    )
)