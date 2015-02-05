FROM ruby:2.1.5
MAINTAINER Brendan Stennett <brendan@thinkdataworks.com>

WORKDIR /app
ADD . /app
RUN bundle install

CMD ruby app.rb

EXPOSE 3000