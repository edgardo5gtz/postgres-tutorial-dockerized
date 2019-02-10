#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE dvdrental;
EOSQL

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d dvdrental <<-EOSQL
    DROP SCHEMA public CASCADE;
EOSQL

pg_restore -U "$POSTGRES_USER" -d dvdrental dvdrental.tar
