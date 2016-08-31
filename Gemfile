source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.17.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# # Use CoffeeScript for .js.coffee assets and views
# gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer','~> 0.12.1',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 3.1.2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', '~> 1.1.3',       group: :development

gem 'dotenv-rails', :groups => [:development, :test]
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# gem 'travis'
## I ADDED THESE BELOW
gem 'puma'

gem 'jquery-ui-rails', '~> 5.0.2'

gem 'jquery-color', '~> 2.1.2'

gem "protected_attributes", '~> 1.0.8'
gem 'foreman', '~> 0.74.0'
gem 'whenever', '~> 0.9.4' # cron jobs
# gem "sprockets-helpers", "~> 0.2" # allows for obtaining digest of an asset in scss file

group :development, :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'guard-rspec', '~> 4.3.1'
  gem 'debugger', '~> 1.6.8'
  #gem 'its'
end

group :test do
  gem 'selenium-webdriver', '~> 2.43.0', require: false
  gem 'poltergeist', '~> 1.5.1', require: false
  gem 'database_cleaner', '~> 1.3.0'
  gem 'factory_girl_rails', '~> 4.5.0'
  #gem 'rspec-mocks'
  gem 'shoulda', '~> 3.5.0'
  gem 'launchy', '~> 2.4.2'
end

group :development do
  gem 'better_errors', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'  # heroku deployment needs this
  gem 'sprockets-rails', '~> 2.2.0' # automatically compile your assests for you don't have to.
end

# group :assets do
  gem 'twitter-bootstrap-rails', '~> 3.2.0'
  # gem 'jquery-ui-bootstrap'
  gem 'less-rails-bootstrap', '~> 3.2.0'
# end

gem 'stellar-js-rails', '~> 0.6.2.1' # parallax effect

