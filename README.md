# Coder Night

A Rails application for managing Coder Night events.

## Dependencies

* Ruby 1.9 (See the Gemfile for other rubygem based dependencies)
* SQLite (development)
* PostgreSQL (production)

## Getting Started

Copy `config/env.yml.dist` to `config/env.yml`. You'll need to register the app and get your own set of OAuth consumer keys from [Twitter](https://dev.twitter.com). You should use `http://0.0.0.0:3000/auth/twitter/callback` for the callback URL. Put the keys in your `config/env.yml` file.

    bundle install --without production
