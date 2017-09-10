# Un comment for Prod

FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /driver_scan
WORKDIR /driver_scan
ADD Gemfile /driver_scan/Gemfile
ADD Gemfile.lock /driver_scan/Gemfile.lock
RUN bundle install 
# --without development test
ADD . /driver_scan
# RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
# CMD bundle exec puma -C config/puma.rb
