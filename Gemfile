source 'https://rubygems.org'

ruby '2.2.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Use sqlite3 as the database for Active Record
gem 'puma'
# makes Jquery works with turbolinks
gem 'jquery-turbolinks'
# makes a dupm of the db
gem 'seed_dump'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use devise for uset authentication
gem 'devise'
# cancancan for authorization
gem 'cancancan', '~> 1.10'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#stripe
gem 'stripe'
gem 'chosen-rails'
gem "compass-rails", github: "Compass/compass-rails", branch: "master"
gem 'pry-rails'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'will_paginate', '~> 3.0.6'
gem "brakeman", :require => false
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'spork',  github: 'sporkrb/spork'
  gem "spork-rails"
  gem 'guard-spork'
  gem "factory_girl_rails", "~> 4.0"
  gem 'guard'
  gem 'guard-rspec', github: 'guard/guard-rspec', branch: 'debug_logging_for_formatter'
  gem 'byebug'
  
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0' , group: :development


  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  #open mail preview in browser
  gem "letter_opener"
  # turns off the Rails asset pipeline log
  gem 'quiet_assets', group: :development
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
  
end

