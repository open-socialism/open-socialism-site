FROM ruby:2.4.2

# ruby base doesn't specify locale
ENV LANG C.UTF-8

# required because pages-gem depends on jekyll-coffeescript :/
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
