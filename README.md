# NaturalDate

Natural language date/time parser in Ruby. `natural-date` can convert from plain text to date expressions that can 
symbolize since single dates till recurrent dates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'natural-date'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install natural-date

## Usage

```ruby
require 'natural-date'

# First you need to create a NaturalDateExpressionFactory with a specific locale. only pt-BR and en is supported by now =(
factory = NaturalDateExpressionFactory.new(:en)

# then create a natural date expression passing a string expression and a reference date.
# In the example below as we set the reference date to 9th of Dezember, 2016 the natural_date is
# going to match only '2017-8-1'
natural_date = factory.create('1th of august', Date.parse('2016-12-9'))

# Test against a Date
puts natural_date.match(Date.new(2016, 8, 1)) # => {:match=>false, :first_matched_expression=>nil}
puts natural_date.match(Date.new(2017, 8, 1)) # => {:match=>true, :first_matched_expression=>{:day=>[1], :month=>[8], :year=>[2017]}}
```

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/natural-date. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

