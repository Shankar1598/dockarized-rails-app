
FROM ruby:2.6.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /fakeapp
WORKDIR /fakeapp

ADD Gemfile /noteapp/Gemfile
ADD Gemfile.lock /noteapp/Gemfile.lock

RUN bundle install

ADD . /fakeapp