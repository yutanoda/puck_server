FROM ruby:2.7.1
RUN apt-get update && apt-get install -y \
         build-essential \
         libpq-dev \
         nodejs \
         postgresql-client 

SHELL ["/bin/bash", "-c"]

RUN curl -o- -L https://yarnpkg.com/install.sh | bash 

RUN source ~/.bashrc

WORKDIR /puck_server
COPY Gemfile Gemfile.lock /puck_server/
RUN bundle install 




