# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

group :development do
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'                       # Resolve OpenSSH problems with capistrano
  gem 'ed25519', '>= 1.2', '< 2.0'                            # Resolve OpenSSH problems with capistrano
  gem "capistrano", "~> 3.16", require: false                 # Deployment
  gem 'capistrano-bundler', '~> 2.0', require: false          # Capistrano bundler integration
  gem 'rvm1-capistrano3', require: false                      # Capistrano rvm integration
end
