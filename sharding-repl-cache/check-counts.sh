docker compose exec -T mongos_router-1 mongosh --port 27020 <<EOF
use somedb
console.log("router count:", db.helloDoc.countDocuments());
EOF

docker compose exec -T shard1-1 mongosh --port 27018 <<EOF
use somedb;
console.log("shard1 count:", db.helloDoc.countDocuments());
EOF

docker compose exec -T shard2-1 mongosh --port 27018 <<EOF
use somedb;
console.log("shard2 count:", db.helloDoc.countDocuments());
EOF
