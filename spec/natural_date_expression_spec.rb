require 'spec_helper'

describe NaturalDateExpression do
  let(:factory) { NaturalDateExpressionFactory.new(:en) }

  describe '#=~' do
    it 'should verify a date expression with day and month' do
      natural_date = factory.create('1th of august', Date.parse('2016-12-9'))

      expect(natural_date =~ Date.new(2016, 8, 1)).to eq(false)
      expect(natural_date =~ Date.new(2017, 8, 1)).to eq(true)
    end

    it 'should verify a date expression with day and month and year' do
      natural_date = factory.create('1th of august 2018')

      expect(natural_date =~ Date.new(2017, 8, 1)).to eq(false)
      expect(natural_date =~ Date.new(2018, 8, 1)).to eq(true)
    end

    it 'should verify a date expression with multiple days and month' do
      natural_date = factory.create('1 8 and 15 of July, 2016')

      expect_all_be_false_expect_these(natural_date, %w(2016-07-01 2016-07-08 2016-07-15))
    end

    it 'should verify a date expression with day and multiple months' do
      natural_date = factory.create('11 of July and August, 2016', Date.parse('2016-01-01'))

      expect_all_be_false_expect_these(natural_date, %w(2016-07-11 2016-08-11))
    end

    it 'should verify a date expression with multiple days and multiple months' do
      natural_date = factory.create('1 and 5 of May and March, 2016', Date.parse('2016-01-01'))

      expect_all_be_false_expect_these(natural_date, %w(2016-03-01 2016-03-05 2016-05-01 2016-05-05))
    end
  end

  # test all dates in the current year used in the tests, and expect they match false,
  # expect the dates passed as exception_dates_string.
  def expect_all_be_false_expect_these natural_date, exception_dates_string
    exception_dates = exception_dates_string.map { |s| Date.parse(s) }

    (Date.new(2016, 1, 1)..Date.new(2016, 12, 31)).to_a.each do |date|
      expect(natural_date =~ date).to eq(exception_dates.include?(date))
    end
  end
end
