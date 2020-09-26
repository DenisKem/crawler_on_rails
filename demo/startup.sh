cd /app
rm tmp/pids/server.pid
bundle config set path /gems
echo "bundle config set path /gems" >> /root/.bashrc
bundle install
bundle exec ruby app.rb