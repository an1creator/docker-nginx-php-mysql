# Для использования команды hwd нужно установить в системную переменную PATH ссылку на папку с данным репозиторием

# Первый запуск
```sh
docker-compose up -d --build --force-recreate --remove-orphans
```
для windows с PATH hwd
```sh
hwd recreate
```

# Интерактивный первый запуск
```sh
docker-compose up --build --force-recreate --remove-orphans
```

# Первый запуск без пересоздания
```sh
docker-compose up -d
```

# Интерактивный первый запуск без пересоздания
```sh
docker-compose up
```

# Остановить контейнеры
```sh
docker-compose down
```
для windows с PATH hwd
```sh
hwd down
```

# Установить зависимости для backend
```sh
docker-compose exec php composer install
```
для windows с PATH hwd
```sh
hwd composer
```

# Выполнить команду для artisan
```sh
docker-compose exec php php artisan ...
```
для windows с PATH hwd
```sh
hwd artisan ...
```

# Запуск сборки сайта
```sh
docker-compose run node npm run watch-poll
```
для windows с PATH hwd
```sh
hwd watch
```