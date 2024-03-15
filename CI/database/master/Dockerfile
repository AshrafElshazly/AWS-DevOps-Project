FROM mysql:latest

COPY master.cnf /etc/mysql/conf.d/mysqld.cnf

COPY init.sql /docker-entrypoint-initdb.d/init.sql

RUN chmod 644 /docker-entrypoint-initdb.d/init.sql

EXPOSE 3306
