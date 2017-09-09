# FROM heroku/ruby

FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /driver_scan
WORKDIR /driver_scan
ADD Gemfile /driver_scan/Gemfile
ADD Gemfile.lock /driver_scan/Gemfile.lock
RUN bundle install
ADD . /driver_scan
