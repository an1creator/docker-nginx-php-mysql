# Первый запуск
```sh
docker-compose up -d --build --force-recreate --remove-orphans
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
# Установить зависимости для backend
```sh
docker-compose exec php composer install
```
# Выполнить команду для artisan
```sh
docker-compose exec php php artisan ...
```
# Запуск сборки сайта
```sh
docker-compose run node npm run watch-poll
```