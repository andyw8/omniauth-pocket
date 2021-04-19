# OmniAuth::Pocket OAuth 2

An OmniAuth Strategy for getpocket.com.

This is based on [omniauth-pocket](https://github.com/leppert/omniauth-pocket)
but updated to require omniauth >= 2.0.0 due to https://github.com/omniauth/omniauth/wiki/Resolving-CVE-2015-9284.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-pocket-oauth2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-pocket-oauth2

## Setup

add provider to omniauth, like in devise.rb, use consumer key for `client_id`:
```
config.omniauth :pocket, client_id: Rails.application.secrets.pocket_consumer_key
````

Add/Create an omniauth callback controller to handle a `pocket` action.
```
class Users::PocketCallbackController < Devise::OmniauthCallbacksController
  def pocket
    # do user stuff from response
  end
end
```


Add to routes
```
devise_for :users, controllers: { omniauth_callbacks: "users/pocket_callback" }
```
