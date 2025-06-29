FROM ruby:3.3

# Základní balíčky
RUN apt-get update -qq && apt-get install -y \
  build-essential libpq-dev nodejs npm git curl

# Node.js (moderní)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Nastavení pracovního adresáře
WORKDIR /app

# Instalace Yarn (volitelně pro jsbundling)
RUN npm install -g yarn

COPY Gemfile* ./
RUN bundle install

COPY . .

# Prebuild assetů
RUN bundle exec rails assets:precompile || true

CMD ["bin/dev"]
