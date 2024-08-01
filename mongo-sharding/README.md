# Первый запуск

## Запускаем конфигурационный сервер mongoDB
```bash
docker-compose up -d configSrv
```

Инициализируем его:
```bash
./init-config.sh
```

## Запускаем шарды
```bash
docker-compose up -d shard1 shard2
```

Включаем шардирование:
```bash
./init-shards.sh
```

## Запускаем роутер
```bash
docker-compose up -d mongos_router
```

Настраиваем его:
```bash
./init-router.sh
```

## Проверяем состояние
```bash
./shard-status.sh
```

## Заполняем данные
```bash
./fill-data.sh
```

и проверяем успешность:
```bash
./check-counts.sh
```

## Запуск приложения

Теперь база данных полностью готова, можно запускать всё приложение:
```bash
docker-compose up -d 
```

# Повторные запуски

Для повторных запусков просто выполняем
```bash
docker-compose up -d 
```
