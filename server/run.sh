#!/bin/bash

cd /app
pwd

if [ -z "$DB_URL" ]; then
    cp config.sample.toml config.toml
else
    echo "dburl = \"$DB_URL\"" > config.toml
fi

echo "--- DB CONFIG ---"
cat ./config.toml
echo "-----------------"
bundle exec rackup -o 0.0.0.0 -p 9292 -s webrick
