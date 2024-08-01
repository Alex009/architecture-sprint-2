docker compose exec -it configSrv-1 mongosh --port 27017 --eval '
rs.initiate({
  _id : "config_server",
  configsvr: true,
  members: [
    { _id : 0, host : "configSrv-1:27017" },
    { _id : 1, host : "configSrv-2:27017" },
    { _id : 2, host : "configSrv-3:27017" }
  ]
});
'