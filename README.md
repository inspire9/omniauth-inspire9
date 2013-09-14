# OmniAuth Client for Inspire9's Identity Server

At this point in time, I don't see this being used for anything outside of Inspire9 projects, but it's open source at least as a proof-of-concept. It's not like there's a great deal of code here though. The server side is much more interesting (and perhaps that'll become open as well).

## Installation

It's a gem, so you'll likely want to put this line in your Gemfile:

```ruby
gem 'omniauth-inspire9', '~> 0.0.1'
```

## Usage

If you're using OmniAuth directly, you'll want to add the middleware with something along these lines:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :inspire9, APP_ID, APP_SECRET
end
```

Or with Devise, in `config/initializers/devise.rb`:

```ruby
config.omniauth :inspire9, APP_ID, APP_SECRET
```

## Licence

Copyright (c) 2013, omniauth-inspire9 is developed and maintained by Pat Allan and Inspire9, and is released under the open MIT Licence.
