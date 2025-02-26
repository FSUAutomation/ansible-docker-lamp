#!/bin/bash
WEB_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' lamp_web)
DB_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mariadb_server)

echo "[lamp_web]"
echo "$WEB_IP ansible_user=root ansible_connection=docker"

echo "[mariadb_server]"
echo "$DB_IP ansible_user=root ansible_connection=docker"
