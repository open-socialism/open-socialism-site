# matches https://pages.github.com/versions
# pinned to sha for reproducability, notably with the hunspell version
FROM ruby:2.5.3@sha256:ee6cfefa56b5a38c061c961de1fa086cf00b1d90dbae9220fa3f113f86432fa6

# ruby base doesn't specify locale
ENV LANG C.UTF-8

# need the latest hunspell (or at least 1.6+ . 1.4 is in stable.)
RUN echo "deb http://deb.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list.d/testing.list

RUN apt-get update \
 && apt-get install -y hunspell/testing \
 && apt-get clean
