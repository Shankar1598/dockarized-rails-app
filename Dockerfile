FROM ruby:2.6.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /fakeapp
WORKDIR /fakeapp

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

# RUN bundle exec rake db:create

ENTRYPOINT [ "./docker-entrypoint.sh" ]


CMD ["rails", "s"]
# CMD ["echo", "CMD COMMAND RUNNING"]