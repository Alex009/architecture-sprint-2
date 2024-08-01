docker exec -i mongo-sharding-mongos_router-1 mongosh --port 27020 <<EOF
use somedb
console.log("router count:", db.helloDoc.countDocuments());
EOF

docker exec -i mongo-sharding-shard1-1 mongosh --port 27018 <<EOF
use somedb;
console.log("shard1 count:", db.helloDoc.countDocuments());
EOF

docker exec -i mongo-sharding-shard2-1 mongosh --port 27019 <<EOF
use somedb;
console.log("shard2 count:", db.helloDoc.countDocuments());
EOF
