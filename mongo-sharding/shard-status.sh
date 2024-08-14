docker exec -it mongo-sharding-mongos_router-1 mongosh --port 27020 --eval '
sh.status()
'
