# Первый запуск

```bash
./initialize.sh
```
После выполнения данной команды приложение полностью развернуто и заполнено данными.

# Повторные запуски

Для повторных запусков просто выполняем
```bash
docker-compose up -d 
```

# Проверка данных

Посмотреть сколько документов:
```bash
./check-counts.sh
```

Посмотреть состояние шардов:
```bash
./shard-status.sh
```

# Про redis

На схеме в drawio предполагался redis cluster, под него настройка была сделана, но выяснилось что приложение не поддерживает работу с redis cluster, поэтому реализация упрощена до 1 redis node без кластер режима. Пример с кластером есть в гит истории.
