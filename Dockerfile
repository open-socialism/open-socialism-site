FROM ruby:2.3.1

# necessary due to https://github.com/docker-library/ruby/issues/45
ENV LANG C.UTF-8

RUN apt-get update \
    && apt-get install -y rlwrap \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# can't pin the version of node js with the recommended debian install technique
# using this alternative for now - waiting on https://github.com/nodesource/distributions/issues/33
RUN FILE="nodejs_6.3.1-1nodesource1~jessie1_amd64.deb"; \
    URL="https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/$FILE"; \
    wget "$URL" -qO $FILE \
    && dpkg -i $FILE \
    && rm $FILE
