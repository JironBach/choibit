#!/bin/sh

cp ./postgresql-42.3.7.jar /tmp
export CLASSPATH=".:/tmp/postgresql-42.3.7.jar"
#export LOCAL_DB_PASSWORD="password"

java DBTest

