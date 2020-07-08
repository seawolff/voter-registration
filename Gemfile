source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.8'

gem 'active_attr'
gem 'devise'
gem 'encrypted-cookie-store'
gem 'high_voltage'
gem 'jquery-rails', '>= 3.1.3'
gem 'omniauth', '~> 1.1.0'
gem 'omniauth-twitter'
gem 'prawn'
gem 'prawn-fillform'
gem 'rails_admin', '~> 0.0.5'
gem 'simple_form'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'less-rails', '~> 2.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
  gem 'twitter-bootstrap-rails'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.0'
  gem 'sqlite3'
  gem 'faker'
  gem 'factory_girl_rails', '~> 4.0'
end

group :test do
  gem 'simplecov', :require => false
  gem "shoulda-matchers"
end

group :production do
  gem 'pg', '0.14.0'
  gem 'puma'
end

