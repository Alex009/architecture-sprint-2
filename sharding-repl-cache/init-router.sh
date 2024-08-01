docker compose exec -it mongos_router-1 mongosh --port 27020 --eval '
sh.addShard( "shard1/shard1-1:27018,shard1-2:27018,shard1-3:27018");
sh.addShard( "shard2/shard2-1:27018,shard2-2:27018,shard2-3:27018");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );
'
