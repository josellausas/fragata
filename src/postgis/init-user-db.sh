#!/bin/bash
set -e

# TODO: Fix this! It makes the thing restart itself
# psql -U llau -d llau -c "CREATE EXTENSION IF NOT EXISTS postgis;"

# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#     CREATE USER llau;
#     CREATE DATABASE llau;
#     GRANT ALL PRIVILEGES ON DATABASE llau TO llau;
#     CREATE EXTENSION postgis;
# EOSQL

# Perform all actions as $POSTGRES_USER
# export PGUSER="llau"
# export POSTGRES_DB="llau"

# Create the 'template_postgis' template db
# "${psql[@]}" <<- 'EOSQL'
# CREATE DATABASE template_postgis IS_TEMPLATE true;
# EOSQL

# Load PostGIS into both template_database and $POSTGRES_DB
# for DB in template_postgis "$POSTGRES_DB"; do
# echo "Loading PostGIS extensions into $POSTGRES_DB"
# psql -U llau --dbname=llau -c "CREATE EXTENSION IF NOT EXISTS postgis;"
# "${psql[@]}" --dbname="$DB" <<-'EOSQL'
  # CREATE EXTENSION IF NOT EXISTS postgis;
  # CREATE EXTENSION IF NOT EXISTS postgis_topology;
  # CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
  # CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder;
# EOSQL
