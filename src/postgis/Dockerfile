FROM postgres:11

# TODO: Make this a secret
ENV DB_NAME=llau
ENV POSTGRES_DB=llau
ENV POSTGRES_USER=llau
ENV POSTGRES_PASSWORD=test1234

# Install Postgis
# TODO: Re-enable this to Install Postgis
# RUN apt-get update && apt-cache showpkg postgresql-11-postgis-2.5 \
#   && apt-get install -y --no-install-recommends \
#     apt-utils \
#     postgresql-11-postgis-2.5 \
#     postgresql-11-postgis-2.5-scripts

# TODO: Fix this
COPY ./init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
EXPOSE 5432
# RUN psql -U postgres -c "CREATE DATABASE ${DB_NAME}"
# RUN psql -U postgres -d "${DB_NAME}" -c "CREATE EXTENSION postgis;"
# RUN psql -U postgres -d database_name -c "SELECT c_defaults  FROM user_info WHERE c_uid = 'testuser'"
