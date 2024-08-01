docker exec -it mongo-sharding-configSrv-1 mongosh --port 27017 --eval '
rs.initiate({
  _id : "config_server",
  configsvr: true,
  members: [
    { _id : 0, host : "configSrv:27017" }
  ]
});
'