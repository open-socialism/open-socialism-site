# matches https://pages.github.com/versions
# pinned to sha for reproducability, notably with the hunspell version
FROM ruby:2.5.3@sha256:df6a3d2e2825a348f68c80e4216ba804d34bf83c38df86870a53da78d44ca701

 # ruby base doesn't specify locale
ENV LANG C.UTF-8

 # need the latest hunspell (or at least 1.6+ . 1.4 is in stable.)
RUN echo "deb http://deb.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list.d/testing.list

# hadolint ignore=DL3008
RUN apt-get update \
 && apt-get install -y --no-install-recommends hunspell/testing \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
