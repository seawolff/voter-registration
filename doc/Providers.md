[OmniAuth](https://github.com/intridea/omniauth) is currently being used to add providers to pull in OAuth information and prefill portions of the form.

## Twitter
Twitter is currently set and can be setup by adding your environment variables.

To setup Sign in with Twitter
* Create a twitter application at [https://dev.twitter.com/apps/new](https://dev.twitter.com/apps/new)
* Create a name for your application
* Add the twitter Callback URL something like this http://floating-waters-8103.herokuapp.com/auth/twitter/callback
* Set your environment variables
* `ENV['TWITTER_KEY']` = Consumer key
* `ENV['TWITTER_SECRET']` = Consumer Secret
* Set these variables on Heroku
* `heroku config:set TWITTER_KEY="abc123"`
* `heroku config:set TWITTER_SECRET="xyz987"`

## Adding Additional Providers
A list of Omniauth Providers is here [https://github.com/intridea/omniauth/wiki/List-of-Strategies](https://github.com/intridea/omniauth/wiki/List-of-Strategies)  Consult the OmniAuth wiki on how to setup additional providers

Setting up providers (example Facebook)
See [https://github.com/mkdynamic/omniauth-facebook](https://github.com/mkdynamic/omniauth-facebook) for more information on configuring

Register for a new application on Facebook

Open the file `config/initializers/omniauth.rb` and add the Facebook provider information

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
```

Add the omniauth-facebook gem to your `gemfile`

`gem omniauth-facebook`

`bundle install`

Modify the registration view to add a link for Github sign in
* Open `app/views/register/new.html.erb`
* Add the line to sign in with Facebook `<%= 'Sign in with Facebook', '/auth/facebook' %>`

Setup your `ENV[FACEBOOK_KEY']` and `ENV['FACEBOOK_SECRET`]