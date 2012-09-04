# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

if Rails.env.production? && ENV['SECRET_TOKEN'].blank?
  raise 'SECRET_TOKEN environment variable must be set!'
end

VoterRegistration::Application.config.secret_token =
  ENV['SECRET_TOKEN'] || '9e54bbeeb2a8573aee35f49c56406f705443fc4afc9e7037a79b9cd8065b592df6d97b5f41ba12acc46fdf61a60363e00ea2debae684bad89cfd5a2b74049091'
