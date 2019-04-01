# matches https://pages.github.com/versions
# pinned to sha for reproducability
FROM ruby:2.5.3@sha256:ae790cc668ca4dd837399a801fbb235d22769ad3e899f8e1b409490d011ff2ba

 # ruby base doesn't specify locale https://github.com/docker-library/ruby/issues/45
ENV LANG C.UTF-8

 # need the latest hunspell (or at least 1.6+ . 1.4 is in stable debian channel.)
RUN echo "deb http://deb.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list.d/testing.list

# Note debian and ubuntu based containers automatically run `apt-get clean` post install
# hadolint ignore=DL3008
RUN apt-get update \
 && apt-get install -y --no-install-recommends hunspell/testing \
 && rm -rf /var/lib/apt/lists/*
