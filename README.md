# README

## Запуск проекта

```
docker-compose build
docker-compose run --rm ruby bash -c 'bundle install'
```

## Запуск тестов

```
docker-compose run --rm ruby bash -c 'bundle exec rake test'
```

## Запуск линтера

```
docker-compose run --rm ruby bash -c 'bundle exec rubocop'
```
