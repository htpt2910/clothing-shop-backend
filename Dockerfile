FROM ruby:3.3

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
  nodejs \
  default-mysql-client \
  libmariadb-dev \
  build-essential \
  libssl-dev \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install bundler
RUN gem install bundler

# Add Gemfile and install gems
COPY Gemfile ./
RUN bundle install

# Add app source
COPY . .

# Expose Rails port
EXPOSE 3000

# Start the server
CMD ["rails", "server", "-b", "0.0.0.0"]
