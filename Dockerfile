FROM ruby:2.3.1

# necessary due to https://github.com/docker-library/ruby/issues/45
ENV LANG C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs=6.3.0-1nodesource1~jessie1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
