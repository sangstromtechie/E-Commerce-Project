FROM ruby:2.5.0

RUN mkdir - p /usr/src/app
WORKDIR /usr/src/app

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/list/*
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

COPY Gemfile /usr/src/app/

#Uncomment theline below if Gemfile.lock is maintained outside of build process
COPY Gemfile.lock /usr/src/app/

RUN bundle install

COPY . /usr/src/app
