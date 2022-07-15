FROM ruby:3.2.0-preview1-slim-bullseye

ADD . /usr/src/app
WORKDIR /usr/src/app

COPY . .


CMD ["ruby","bin/main.rb"]