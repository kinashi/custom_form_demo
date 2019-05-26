FROM ruby:2.4-alpine

RUN mkdir -p /rails
COPY Gemfile* /rails/
WORKDIR /rails

ENV BUNDLE_APP_CONFIG="/rails/.bundle"
ENV BUNDLE_PATH="/rails/vendor/bundle"

RUN apk upgrade --no-cache && \
    apk add --update --no-cache \
      postgresql-client \
      nodejs \
      mysql-dev \
      mysql-client \
      tzdata && \
    apk add --update --no-cache --virtual=build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    gem install bundler && \
    bundle config --global build.nokogiri --use-system-libraries \
    apk del build-dependencies
