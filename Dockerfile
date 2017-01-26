FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential

# node/npm
RUN apt-get install -y nodejs npm

ENV APP_HOME /rails
WORKDIR $APP_HOME
