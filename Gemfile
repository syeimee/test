# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Core libraries
gem 'bootsnap', require: false
gem 'rails', '7.0.2.2'

# Database, Model
gem 'pg'
gem 'ridgepole'

# Web server
gem 'puma', '~> 5.0'

# Frontend
gem 'jsbundling-rails'
gem 'slim-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

# Sentry
gem 'sentry-rails'
gem 'sentry-ruby'

group :development, :test do
  gem 'active_decorator-rspec'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rspec-request_describer'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'rubocop-rspec', require: false
  gem 'seed-fu'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'fuubar'
  gem 'listen'
  gem 'rails-erd'
  gem 'simplecov', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen'
  gem 'web-console'
end
