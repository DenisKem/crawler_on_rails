#!/bin/bash

cd /app
rm tmp/pids/server.pid
bundle config set path /gems
echo "bundle config set path /gems" >> /root/.bashrc
bundle install
yarn install --check-files
bundle exec rails db:migrate
bundle exec rails server -b 0.0.0.0
