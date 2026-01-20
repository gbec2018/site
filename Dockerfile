FROM ruby:4.0-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile first for better caching
COPY Gemfile Gemfile.lock ./

# Install bundler and gems
RUN gem install bundler && bundle install

# Copy the rest of the site
COPY . .

# Expose Jekyll server port
EXPOSE 4000

# Default command: serve with live reload
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]