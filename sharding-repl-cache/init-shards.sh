docker compose exec -it shard1-1 mongosh --port 27018 --eval '
rs.initiate({
  _id : "shard1",
  members: [
    { _id : 0, host : "shard1-1:27018" },
    { _id : 1, host : "shard1-2:27018" },
    { _id : 2, host : "shard1-3:27018" }
  ]
});
'

docker compose exec -it shard2-1 mongosh --port 27018 --eval '
rs.initiate({
  _id : "shard2",
  members: [
    { _id : 0, host : "shard2-1:27018" },
    { _id : 1, host : "shard2-2:27018" },
    { _id : 2, host : "shard2-3:27018" }
  ]
});
'
