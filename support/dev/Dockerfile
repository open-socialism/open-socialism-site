# matches https://pages.github.com/versions
# pinned to sha for reproducability, notably with the hunspell version
FROM ruby:2.5.3@sha256:ae790cc668ca4dd837399a801fbb235d22769ad3e899f8e1b409490d011ff2ba

 # ruby base doesn't specify locale
ENV LANG C.UTF-8

 # need the latest hunspell (or at least 1.6+ . 1.4 is in stable.)
RUN echo "deb http://deb.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list.d/testing.list

# hadolint ignore=DL3008
RUN apt-get update \
 && apt-get install -y --no-install-recommends hunspell/testing \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
