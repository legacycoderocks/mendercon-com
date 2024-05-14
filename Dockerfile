FROM ruby:2.5-stretch

WORKDIR /app
VOLUME /app
COPY Gemfile Gemfile.lock ./

ENV BUNDLE_GEMFILE=/app/Gemfile \
  BUNDLE_JOBS=5 \
  BUNDLE_PATH=/bundle

RUN rm -rf /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian/ stretch main" >> /etc/apt/sources.list
RUN echo "deb-src [trusted=yes] http://archive.debian.org/debian/ stretch main" >> /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian/ stretch-backports main" >> /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian-security/ stretch/updates main" >> /etc/apt/sources.list
RUN echo "deb-src [trusted=yes] http://archive.debian.org/debian-security/ stretch/updates main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install --assume-yes curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install --assume-yes nodejs
RUN gem install bundler --version 2.1.4
RUN bundle install
