FROM ruby:2.3.1

# ruby base doesn't specify locale
ENV LANG C.UTF-8

RUN apt-get update \
    && apt-get install -y rlwrap \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# can't pin the version of node js with the recommended debian install technique
# using this alternative for now - waiting on https://github.com/nodesource/distributions/issues/33
RUN FILE="nodejs_6.6.0-1nodesource1~jessie1_amd64.deb"; \
    wget "https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/$FILE" -qO $FILE \
    && dpkg -i $FILE \
    && rm $FILE
