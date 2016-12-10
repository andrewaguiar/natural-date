# Natural Date - Alpha

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

# First you need to create a NaturalDateExpressionFactory with a specific locale.
# Only pt-BR and en is supported by now.
factory = NaturalDateExpressionFactory.new(:en)

# Then create a natural date expression passing a string expression and a reference date.
# In the example below as we set the reference date to 9th of Dezember, 2016 the natural_date is
# going to match only '2017-8-1'.
# When no reference date is provided the Date.today is going to be used.
natural_date = factory.create('1th of august', Date.parse('2016-12-9'))

# NaturalDateExpression does not generate Dates (due it can represent a 
# recurrent date expression like 'every monday') instead you need to 
# match a particular date to the expression using the *=~* or *match?*.
puts natural_date =~ Date.new(2016, 8, 1) # => false
puts natural_date =~ Date.new(2017, 8, 1) # => true 

# or using match?
natural_date.match?(Date.new(2016, 8, 1))
# => false
natural_date.match?(Date.new(2017, 8, 1))
# => true

# You can also get some matched dates in a given interval
natural_date.fetch_dates(Date.today..(Date.today + 5))
# => array with dates matched inside the interval

# If you don't pass any interval a default interval of Date.today..Date.today + 365 will be given
natural_date.fetch_dates
# => array with dates matched inside the interval
```

## Types of expressions

You can create lots of different types of expressions, using days months, years and week days, the expression can 
refer both single and recurring dates.

  - **Days**: Can be written as numbers `1..31` or ordinals like `['1st'..'31st']`.
  - **Months**: Can be written using the whole name `['January'..'December']` or using the first 3 letters `['Jan'..'Dec']`, also they are case insensitive `'JAN' == 'Jan' == 'jAn'` also you can use numbers if you use the 'of' world before `'1 of 12' == '1st December'`.
  - **Years**: You can write the year as usual 4 digits number like `2016` or you can ignore the year, if you ignore it the year is going to be guessed based on the expression and the reference date
  - **Week Days**: As months you can write both whole name and abbreviation (first 3 letters) 'monday' == 'mon'.

```ruby
factory = NaturalDateExpressionFactory.new(:en)

# Day and month
factory.create('1st of November, 2016')
# => '1st November 2016'
factory.create('1 sep 2016')
# => '1st September 2016'
factory.create('1 of 1 2016')
# => '1st September 2016'
factory.create('1 of July', Date.new(2016, 1, 1)
# => '1st July 2016' due the reference date is before '1st July, 2016'
factory.create('1st of Apr', Date.new(2016, 9, 9)
# => '1st April 2017' due the reference date is after '1st April, 2016'

# Multiple days in a month
factory.create('1 8 and 15 of July, 2016')
# => ['1st July 2016', '8th July 2016', '15th July 2016']
factory.create('1st 8 and 15th of September, 2016')
# => ['1st July 2016', '8th July 2016', '15th July 2016'], not the best consistency but still ok

# Single day in multiple months
factory.create('1 of July and August 2016')
# => ['1st July 2016', '1st August 2016']

# Multiple days and multiple months
factory.create('1, 7 of May and March 2016')
# => ['1st May 2016', '7st May 2016', '1st March, 2016', '7st March 2016']

# You can also set ranges in both days and months using *till* or *until*
factory.create('1 till 7 of Jan 2016')
# => ['1st January 2016'..'7st January 2016']
factory.create('1 of Jan until April 2016')
# => ['1st January 2016', '1st January 2016', '1st January 2016', '1st January 2016']

# Also you can set week days like 'monday', 'sunday', 'sat'
factory.create('every monday of January')
# => every monday of January any year
factory.create('every monday and friday')
# => every monday and friday of any month and any year.
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/natural-date. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
