#!/bin/bash
docker  run -d  --name mysql-server57  -p 3307:3306 -e MYSQL_ROOT_PASSWORD=dalongrong -e MYSQL_ROOT_HOST=% mysql/mysql-server:5.7

