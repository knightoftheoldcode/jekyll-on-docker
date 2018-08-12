FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /jekyll
WORKDIR /jekyll
COPY Gemfile /jekyll/Gemfile
COPY Gemfile.lock /jekyll/Gemfile.lock
RUN bundle install
COPY . /jekyll