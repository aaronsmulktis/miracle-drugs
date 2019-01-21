#!/bin/sh

# Create database and restore data
#
# The datafile is one dumped with the following command:
#    pg_dump -Fc -c --if-exists -d ediamonds_dev > $DBFILE


# this is run as the "postgres" user on system startup

DBUSER=webuser
DBFILE=/sql/miracle_drugs_dev_db
DBNAME=miracle_drugs_dev

createdb $DBNAME

# -s is "superuser", this isn't a good solution for a production
# environment, but is required for extension privileges.
createuser -s $DBUSER

psql -c "grant all privileges on database $DBNAME to $DBUSER"

psql -U $DBUSER $DBNAME <<"EOF"
CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;
CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
EOF

if [ -e $DBFILE ] ; then
    pg_restore \
        --clean \
        --if-exists \
        --no-acl \
        --no-owner \
        --verbose \
        -U $DBUSER \
        -d $DBNAME \
        $DBFILE
fi

