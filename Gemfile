source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  # Use selenium-webdriver as testing tool
  gem 'selenium-webdriver'
  # Use rspec-rails as test framework
  gem 'rspec-rails'
  # Use responders as respond formats
  gem 'responders'
  # Use jquery-rails as jquery
  gem 'jquery-rails'
  # Use bootstrap-sass as bootstrap
  gem 'bootstrap-sass'
  # Use angularjs as Angular framework
  gem 'angularjs-rails'
  # Use better errors as better error display
  gem 'better_errors'
  # Use devise as authentication
  gem 'devise'
  # Use rails_best_partices to best_practices
  gem 'rails_best_practices'
  # Use factory_bot as factory data
  gem 'factory_girl_rails'
  # User ffaker to generate fake data
  gem 'ffaker'
  # Use rails admin as admin panel
  gem 'rails_admin'
  # Use Pundit as authorization
  gem 'pundit'
  # Use simplecov as code coverage
  gem 'simplecov'
  # Use carrerwave as file uploader
  gem 'carrierwave'
  # Use pg as database, :only => :heroku
  # gem 'pg'
  # Use pry-rails as terminal 
  gem 'pry-rails'
  # Use pry-byebug as debbuger
  gem 'pry-byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
