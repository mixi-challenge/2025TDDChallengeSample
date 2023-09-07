FROM ruby:3.2.2
ENV LANG C.UTF-8

RUN set -ex
RUN apt-get update -qq

RUN mkdir -p /src/tdd_challenge
WORKDIR /src/tdd_challenge

RUN useradd -m --shell /bin/bash --uid 1000 ruby
USER ruby

RUN gem install bundler -v 2.4.19 && \
  bundle config set path '/usr/local/bundle/vendor/gems'

ENV EDITOR vim
