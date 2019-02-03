FROM ruby:2.6.1

ENV APP_ROOT continuefromcheckpoint
ENV BUNDLER_VERSION 2.0.1 

RUN apt-get update -qq

# Install Yarn and Node 10
# https://github.com/nodesource/distributions/blob/d2071b9ddda150371c59db9a40a19b02666358b2/README.md#installation-instructions
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y postgresql-client yarn
RUN mkdir /$APP_ROOT
WORKDIR /$APP_ROOT
COPY Gemfile /$APP_ROOT/Gemfile
COPY Gemfile.lock /$APP_ROOT/Gemfile.lock
# Install the right version of Bundler.
RUN gem install bundler:$BUNDLER_VERSION
RUN bundle install --jobs=4
# Copy package.json and yarn.lock, then install yarn packages.
COPY package.json /$APP_ROOT/package.json
COPY yarn.lock /$APP_ROOT/yarn.lock
RUN yarn install --frozen-lockfile

# RUN find -maxdepth 3 -type d -ls
# Copy the rest of the files. We do this last to speed up regeneration of the Docker image.
COPY . /$APP_ROOT
# RUN find -maxdepth 3 -type d -ls

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
