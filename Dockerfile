FROM ruby:2.5-stretch

WORKDIR /app
VOLUME /app
COPY Gemfile Gemfile.lock ./

ENV BUNDLE_GEMFILE=/app/Gemfile \
  BUNDLE_JOBS=5 \
  BUNDLE_PATH=/bundle

RUN apt-get update
RUN apt-get install --assume-yes curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install --assume-yes nodejs
RUN gem install bundler --version 2.1.4
RUN bundle install
