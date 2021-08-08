LABEL maintainer="Amelie Cotture"

# Define app folder
WORKDIR /usr/roadmap

# RUN app
RUN bin/setup
RUN gem install bundler
RUN bundle install
RUN rake db:schema:load
RUN rake db:seed
RUN rake yarn_install
RUN rails server
