source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'rails', '~> 5.2.3'
gem 'sqlite3'
gem 'puma', '~> 5.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-ui-rails'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'faker'
gem 'devise'
gem 'simple_form'
gem 'pry'
gem "rails_admin", :git => "git://github.com/sferik/rails_admin.git"


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'capybara-screenshot'
  gem 'chromedriver-helper'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'pry-rails'
end