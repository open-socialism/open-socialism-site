FROM ruby:2.5.1
# matches https://pages.github.com/versions

# ruby base doesn't specify locale
ENV LANG C.UTF-8

# need the latest hunspell
RUN echo "deb http://deb.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list.d/testing.list

RUN apt-get update \
 && apt-get install -y hunspell/testing \
 && apt-get clean
