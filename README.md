# Senty

Senty sentiment analysis API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'senty'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install senty

## Usage

```ruby
senty = Senty.new

senty.api_key = ENV['YOUR API KEY']

text = "the good, the bad, and the ugly."

senty.analyze(text)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/senty.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
