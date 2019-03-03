# matches https://pages.github.com/versions
# pinned to sha for reproducability, notably with the hunspell version
FROM ruby:2.5.3@sha256:896fa26dffa371b10463c9fff46aa3cd4a15b23949a70fb5355d51399c7044b6

 # ruby base doesn't specify locale
ENV LANG C.UTF-8

 # need the latest hunspell (or at least 1.6+ . 1.4 is in stable.)
RUN echo "deb http://deb.debian.org/debian testing main contrib non-free" >> /etc/apt/sources.list.d/testing.list

 RUN apt-get update \
 && apt-get install -y --no-install-recommends hunspell/testing \
 && apt-get clean
