exec bash --login

rvm install 2.3.1
rvm use 2.3.1

gem install bundler

bundle install

rails db:migrate
