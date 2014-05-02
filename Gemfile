source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.1.0'

gem 'pg'

gem 'aws-sdk'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass'
gem 'figaro'
gem 'haml'
gem 'iron_worker_ng'
gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'paperclip'
gem 'redis'
gem 'sass-rails', '~> 4.0.0'
gem 'sidekiq'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'
gem 'zurb-foundation'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'guard'
  gem 'guard-rspec'
  gem 'sextant'
end

group :test, :development do
  gem 'capybara'
  gem 'debugger'
  gem 'factory_girl_rails'
  gem 'rspec'
  gem 'rspec-core'
  gem 'rspec-expectations'
  gem 'rspec-mocks'
  gem 'rspec-rails', '>= 2.14'
  gem 'shoulda-matchers'
  gem 'simplecov', :require => false
  gem 'zeus', '>= 0.13.4.pre2'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
end

group :staging, :production do
  gem 'rails_12factor'
end
