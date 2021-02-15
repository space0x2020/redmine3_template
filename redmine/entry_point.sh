#!/bin/sh

cd /usr/src/redmine
#bundle install
#bundle exec rake generate_secret_token
#bundle exec rake db:migrate

echo exec "$@"
#exec rails s -b 0.0.0.0
#tail -f /dev/null
exec "$@"
