FROM ruby:2.5.1
# matches https://pages.github.com/versions

# ruby base doesn't specify locale
ENV LANG C.UTF-8

RUN apt-get update \
 && apt-get install -y hunspell \
 && apt-get clean
