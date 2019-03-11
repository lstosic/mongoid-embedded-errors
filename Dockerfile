FROM ruby:2.5.3

# Optionally set a maintainer name to let people know who made this image.
MAINTAINER Kristijan Novoselić <kristijan@glooko.com>

# Install dependencies:
RUN apt-get update -qq && apt-get install -y build-essential nodejs

ENV app /app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /usr/local/bundle

CMD '/app/run.sh'
