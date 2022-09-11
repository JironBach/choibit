#!/bin/sh

cp ./postgresql-42.5.0.jar /tmp
export CLASSPATH=".:/tmp/postgresql-42.5.0.jar:"

#export LOCAL_DB_PASSWORD="password"

java DBTest

