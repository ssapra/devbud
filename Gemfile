source 'https://rubygems.org'

ruby '2.1.3'
gem 'rails', '4.1.8'
gem 'pg'
gem 'haml'
gem 'valid_email'
gem 'sorcery'
gem 'rest_client'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'bcrypt', '~> 3.1.7'

gem 'jquery-rails'

gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0',          group: :doc

group :development, :test do
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'faker', '~> 1.4.3'
  gem 'quiet_assets'
  gem 'pry'
end

group :development do
  gem "rails-erd"
  gem "thin"
  gem 'meta_request', '~> 0.3.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'selenium-webdriver', '~> 2.44.0'
  gem 'database_cleaner', '~> 1.2.0'
  gem 'shoulda-matchers', '~> 2.6.1'
  gem 'twilio-test-toolkit'
  gem 'capybara', '~> 2.4.4'
  gem 'cucumber-rails', :require => false

  gem 'launchy', '~> 2.4.0'
end

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
  gem 'unicorn-rails'
end
