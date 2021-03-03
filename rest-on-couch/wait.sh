#!/bin/bash

while [ $(curl --write-out %{http_code} --silent --output /dev/null http://${COUCHDB_HOST}:5984/_users) == "000" ]; do
    echo "CouchDB is starting up..."
    sleep 3
done
