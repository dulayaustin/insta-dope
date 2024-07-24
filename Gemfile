# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.3.4"
gem "rails", "7.1.3.4"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "devise", "~> 4.9"
gem "image_processing", "~> 1.2"
gem "jbuilder"
gem "jsbundling-rails"
gem "kredis"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "redis", ">= 4.0.1"
gem "rubocop-shopify", require: false
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: [:windows, :jruby]

group :development, :test do
  gem "debug", platforms: [:mri, :windows]
  gem "factory_bot_rails", "~> 6.4", ">= 6.4.3"
  gem "faker", "~> 3.4", ">= 3.4.2"
  gem "rspec-rails", "~> 6.1", ">= 6.1.3"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara", "~> 3.40"
  gem "database_cleaner", "~> 2.0", ">= 2.0.2"
  gem "shoulda-matchers", "~> 6.2"
  gem "webdrivers", "~> 5.3", ">= 5.3.1", require: false
end
