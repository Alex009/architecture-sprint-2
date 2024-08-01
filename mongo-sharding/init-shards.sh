docker exec -it mongo-sharding-shard1-1 mongosh --port 27018 --eval '
rs.initiate({
  _id : "shard1",
  members: [
    { _id : 0, host : "shard1:27018" }
  ]
});
'

docker exec -it mongo-sharding-shard2-1 mongosh --port 27019 --eval '
rs.initiate({
  _id : "shard2",
  members: [
    { _id : 0, host : "shard2:27019" }
  ]
});
'
