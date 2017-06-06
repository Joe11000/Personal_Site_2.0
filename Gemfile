source 'https://rubygems.org'

ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .js.coffee assets and views
# gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer' #,'~> 0.12.1',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc' #, '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring'#, '~> 1.1.3',       group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# gem 'travis'
## I ADDED THESE BELOW
gem 'byebug'
gem 'jquery-ui-rails'

gem 'jquery-color'

gem 'puma'
# gem "protected_attributes", '~> 1.0.8'
gem 'foreman'
gem 'whenever'# cron jobs
# gem "sprockets-helpers", "~> 0.2" # allows for obtaining digest of an asset in scss file

group :development, :test do
  gem 'rspec-rails'
  # gem 'binding_of_caller'
  gem 'guard-rspec'
  # gem 'debugger', '~> 1.6.8'
  gem 'dotenv-rails'
  #gem 'its'
end

group :test do
  gem 'poltergeist' #, '~> 1.5.1', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  #gem 'rspec-mocks'
  gem 'shoulda'
  gem 'launchy'

  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :development do
  gem 'better_errors'#, '~> 2.0.0'
end

group :production do
  gem 'rails_12factor' #, '~> 0.0.3'  # heroku deployment needs this
  gem 'sprockets-rails'#, '~> 2.2.0' # automatically compile your assests for you don't have to.
end

# group :assets do
  gem 'bootstrap-sass'
  # gem 'jquery-ui-bootstrap'

# end

gem 'stellar-js-rails'#, '~> 0.6.2.1' # parallax effect
