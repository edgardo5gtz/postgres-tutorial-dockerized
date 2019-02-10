FROM postgres:11

VOLUME [ "/data" ]

WORKDIR /

COPY dvdrental.tar /

COPY initdb.sh /docker-entrypoint-initdb.d/
