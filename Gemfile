# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'country_select'
gem 'devise'
gem 'jbuilder', '~> 2.7'
gem 'money-rails', '~>1.12'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 6.0.0'
gem 'sass-rails', '~> 6'
gem 'simple_form'
gem 'webpacker', '~> 4.0'
# gem 'redis', '~> 4.0'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'annotate'
  gem 'brakeman'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'launchy', '~> 2.4', '>= 2.4.3'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_real_favicon'
  gem 'rubocop-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
