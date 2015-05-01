source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
#Figaro is a solution for handling sensitive data
gem 'figaro', '1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Faker generates fake data to help during development
gem 'faker'
# Devise is a full-featured authenticatin system
gem 'devise'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#Twitter-Bootstrap gem
gem 'bootstrap-sass'
#Pundit offers authorization through classes
gem 'pundit'
#Redcarpet is a Ruby library for Markdown processing that smells like butterlies and popcorn.
gem 'redcarpet'
#Carrierwave provides a simple and extremely flexible way to upload files from Ruby applications.
gem 'carrierwave'
#Minimagick is a ruby wrapper for ImageMagick
gem 'mini_magick'
#Fog allows for an easier means of uploading to Amazon's S3.
gem 'fog'
# will_paginate allows for easy implementation of pagination.
gem 'will_paginate', '~> 3.0.5'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
  gem 'pg'
  gem 'rails_12factor'

  # New Relic has a variety of tools for application monitoring
  gem 'newrelic_rpm'
end

group :development, :test do
  # Rspec will allow for testing our code
  gem 'rspec-rails', '~> 3.0'

  # Capybara helps you test web applications by simulating how a real user would interact with your app. 
  gem 'capybara'

  gem 'sqlite3'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Pry offers extra features not available in the standard IRB shell
  gem 'pry-rails'
end

