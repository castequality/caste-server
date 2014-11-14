source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.2'

gem 'activeadmin', github: 'castequality/active_admin'
gem 'active_model_serializers', '0.8.2'
gem 'aws-sdk'
gem 'bourbon'
gem 'coffee-rails'
gem 'compass-rails'
gem 'delayed_job_active_record', '>= 4.0.0'
gem 'dotenv-rails'
gem 'daemons'
gem 'dalli'
gem 'email_validator'
gem 'google-analytics-rails'
gem 'jquery-rails'
gem 'memcachier'
gem 'neat'
gem 'pg'
gem 'paperclip'
gem 'rack-cors', require: 'rack/cors'
gem 'rack-timeout'
gem 'rails', '>= 4.0.1'
gem 'rails_serve_static_assets'
gem 'rich', github: 'bastiaanterhorst/rich'
gem 'recipient_interceptor'
gem 'redis'
gem 'tumblr_client'
gem 'uglifier'
gem 'unicorn'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'rspec-rails', '>= 2.14'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'teaspoon'
end

group :test do
  gem 'database_cleaner'
  gem 'json-schema'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'sprockets-redirect'
  gem 'heroku_rails_deflate'
  gem 'newrelic_rpm', '>= 3.6.7'
  gem 'rails_12factor'
end
