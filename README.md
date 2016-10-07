# Conekta Dashboard

Rails engine that helps to visualize https://admin.conekta.io/ dashboard from our rails application

## Installation 
Add this line to your application's Gemfile:

```ruby
gem 'conekta_dashboard'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conekta_dashboard

## Usage

Mount the engine routes to you rails application in config/routes.rb

```ruby
  mount ConektaDashboard::Engine => "/payments"
```

Set your private api key in `config/initializers/conekta_dashboard.rb`

```ruby
ConektaDashboard.setup do |config|
  config.api_private_key = 'API_KEY'
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chukitow/conekta_dashboard

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
