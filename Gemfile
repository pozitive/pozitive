source 'https://rubygems.org'
ruby "2.1.0"
gem 'rails', '4.0.2'
gem 'pg'  # PostgreSQL database support
gem 'sass-rails', '~> 4.0.0' # Sass stylesheet language
gem 'uglifier', '>= 1.3.0'   # Javascript compressor
gem 'coffee-rails', '~> 4.0.0'  # Coffee-script support
gem 'therubyracer', platforms: :ruby  # Google V8 javascript engine
gem 'jquery-rails'  # Use jquery as the JavaScript library
gem 'jbuilder', '~> 1.2' # Json for declaring
gem 'rails_12factor', group: :production
gem "haml-rails"
gem 'compass-rails', github: "Compass/compass-rails"
gem 'foundation-rails', github: "zurb/foundation-rails"
gem 'globalize', '~> 4.0.0.alpha.2'
gem 'figaro'
gem 'devise'
gem 'truncate_html'
gem 'foundation-icons-sass-rails'
gem 'redcarpet'
gem 'metamagic'
gem 'mini_magick'
gem 'carrierwave'
gem 'fog'
gem 'unicorn' # Use unicorn as the app server
gem 'capistrano', group: :development # Use Capistrano for deployment
gem 'capistrano-rbenv'
gem 'capistrano-bundler'
gem 'capistrano-rails'
gem 'yaml_db', github: 'jetthoughts/yaml_db', ref: 'fb4b6bd7e12de3cffa93e0a298a1e5253d7e92ba'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'capybara' # Simulates user actions for cucumber
  gem 'cucumber-rails', :require => false # Cucmber features
  gem 'capybara-webkit'  # Headless driver for capybara
  gem 'webrat'  # Another Headless driver for capybara
  gem 'launchy' # Opens capybara response in your browser on save_and_open_page
  gem 'database_cleaner'  # Provides strategies for cleaning up the test db after test runs
  gem 'zeus' # rails preloading environment
end

group :development, :test do
  gem 'rspec-rails' #unit testing
  gem 'debugger'  # Use debugger
  gem 'colored'
end

