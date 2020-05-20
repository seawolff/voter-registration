source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '5.2.4.3'

gem 'active_attr', '>= 0.10.3'
gem 'devise', '>= 4.4.2'
gem 'encrypted-cookie-store', '>= 1.0'
gem 'high_voltage'
gem 'jquery-rails', '>= 4.0.1'
gem 'omniauth', '~> 1.1.0'
gem 'omniauth-twitter'
gem 'prawn'
gem 'prawn-fillform'
gem 'rails_admin', '~> 1.0.0'
gem 'simple_form', '>= 4.0.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'less-rails', '~> 2.2.3'
  gem 'coffee-rails', '~> 4.2.2'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
  gem 'twitter-bootstrap-rails', '>= 2.1.2'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.11', '>= 2.11.0'
  gem 'sqlite3'
  gem 'faker'
  gem 'factory_girl_rails', '~> 4.0', '>= 4.0.0'
end

group :test do
  gem 'simplecov', :require => false
  gem "shoulda-matchers", ">= 1.3.0"
end

group :production do
  gem 'pg', '0.14.0'
  gem 'puma'
end

