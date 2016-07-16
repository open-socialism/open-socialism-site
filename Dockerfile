FROM ruby:2.3.1

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /work
WORKDIR /work

ADD Gemfile /work/Gemfile
ADD Gemfile.lock /work/Gemfile.lock
RUN bundle install

ADD . /work

EXPOSE 4000

CMD bundle exec jekyll serve --incremental -H 0.0.0.0
