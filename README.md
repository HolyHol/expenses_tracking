# README

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FHolyHol%2Fexpenses_tracking%2Fbadge%3Fref%3Dmain&style=for-the-badge)](https://actions-badge.atrox.dev/HolyHol/expenses_tracking/goto?ref=main)

## Запуск проекта

```
docker-compose build
docker-compose run --rm web bash -c "bundle install"

```

## Запуск тестов

```
docker-compose run --rm web bash -c 'bundle exec rake test'
```

## Запуск линтера

```
docker-compose run --rm web bash -c 'bundle exec rubocop'
```

## Проект на Heroku

```
https://pacific-reef-20341.herokuapp.com/
```