#!/bin/bash
export TAGALYS_SECRET=$(cat /mnt/secret/TAGALYS_SECRET)
export DB_USER=$(cat /mnt/secret/DB_USER)
export DB_NAME=$(cat /mnt/secret/DB_NAME)
export DB_PASSWORD=$(cat /mnt/secret/DB_PASSWORD)
export DB_HOST=$(cat /mnt/secret/DB_HOST)
export DEV_SECRET_KEY=$(cat /mnt/secret/DEV_SECRET_KEY)
export PROD_SECRET_KEY=$(cat /mnt/secret/PROD_SECRET_KEY)
export TEST_SECRET_KEY=$(cat /mnt/secret/TEST_SECRET_KEY)
export MYSQL_ROOT_PASSWORD=$(cat /mnt/secret/MYSQL_ROOT_PASSWORD)
export MYSQL_DATABASE=$(cat /mnt/secret/MYSQL_DATABASE)
export MYSQL_USER=$(cat /mnt/secret/MYSQL_USER)
export MYSQL_PASSWORD=$(cat /mnt/secret/MYSQL_PASSWORD)
export MYSQL_ROOT_HOST=$(cat /mnt/secret/MYSQL_ROOT_HOST)

exec "$@"