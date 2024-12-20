#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "apply-templates.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM postgres:14-alpine

ENV POSTGRES_PASSWORD=not24get
ENV POSTGRES_HOST_AUTH_METHOD=md5

COPY mydb.sql /docker-entrypoint-initdb.d/
RUN mkdir -p  /etc/postgresql/
COPY my-postgres.conf /etc/postgresql/postgresql.conf

ENV POSTGRES_DB=mydb

EXPOSE 5432

CMD ["postgres"]
