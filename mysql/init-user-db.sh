#!/bin/bash
set -e

mysql -uroot -prootpass <<-EOSQL
    CREATE DATABASE database_production;
    CREATE DATABASE database_development;
    CREATE DATABASE database_test;
EOSQL
