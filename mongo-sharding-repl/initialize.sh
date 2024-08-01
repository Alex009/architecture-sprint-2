set -e

echo "setup config servers"
docker compose up -d --wait configSrv-1 configSrv-2 configSrv-3

./init-config.sh

echo "setup shards servers"
docker compose up -d --wait shard1-1 shard1-2 shard1-3 shard2-1 shard2-2 shard2-3

./init-shards.sh

echo "setup router servers"
docker compose up -d --wait mongos_router-1 mongos_router-2 mongos_router-3

./init-router.sh

echo "fill data"
./fill-data.sh

echo "start application"
docker compose up -d --wait 
