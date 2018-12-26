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

senty.api_key = YOUR_API_KEY

text = "the good, the bad, and the ugly."

senty.analyze(text)
#=> {
#  "results"=>
#    [
#      {"key"=> "the", "value"=>0}, 
#      {"key"=>"good", "value"=>0.639423076923}, 
#      {"key"=>"the", "value"=>0}, 
#      {"key"=>"bad", "value"=>-0.558823529412}, 
#      {"key"=>"and", "value"=>0}, 
#      {"key"=>"the", "value"=>0}, 
#      {"key"=>"ugly", "value"=>-0.354166666667}
#    ], 
#    "total"=>-0.2735671191559999, 
#    "type"=>"Negative", 
#    "original_text"=>"the good, the bad, and the ugly."
#  }
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
