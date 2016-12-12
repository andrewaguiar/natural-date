require 'spec_helper'

describe NaturalDateExpression do
  let(:beginning_of_the_2016) { Date.parse('2016-01-01') }
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
      natural_date = factory.create('11 of July and August, 2016', beginning_of_the_2016)

      expect_all_be_false_expect_these(natural_date, %w(2016-07-11 2016-08-11))
    end

    it 'should verify a date expression with multiple days and multiple months' do
      natural_date = factory.create('1 and 5 of May and March, 2016', beginning_of_the_2016)

      expect_all_be_false_expect_these(natural_date, %w(2016-03-01 2016-03-05 2016-05-01 2016-05-05))
    end

    it 'should verify a date expression with multiple expressions' do
      natural_date = factory.create('1 5 jun ; 4 7 mar', beginning_of_the_2016)

      expect_all_be_false_expect_these(natural_date, %w(2016-06-01 2016-06-05 2016-03-04 2016-03-07))
    end
  end

  describe '#recurrent?' do
    context 'should consider recurrent' do
      it 'a date with day as recurrent' do
        natural_date = factory.create('1') # every 1st day of any month and any year

        expect(natural_date.recurrent?).to eq(true)
      end

      it 'a date with week days as recurrent' do
        natural_date = factory.create('monday and wednesday')

        expect(natural_date.recurrent?).to eq(true)
      end

      it 'when one expression is recurrent but the other is not' do
        natural_date = factory.create('every monday ; 1 april 2000')

        expect(natural_date.recurrent?).to eq(true)
      end
    end

    context 'should consider no recurrent' do
      it 'should consider a date with day and month as no recurrent' do
        natural_date = factory.create('1st of august') # 1st of august of guessed year (depending of Date.today)

        expect(natural_date.recurrent?).to eq(false)
      end

      it 'should consider a date with day, month and year as no recurrent' do
        natural_date = factory.create('1 of august 2018')

        expect(natural_date.recurrent?).to eq(false)
      end
    end
  end

  describe '#fetch_dates' do
    it 'should fetch all matched dates inside an interval of 1 year from reference date' do
      natural_date = factory.create('1 and 2 of august 2018', Date.parse('2018-01-01'))

      # The range used will be '2018-01-01'..'2018-01-01' + 365 days
      expect(natural_date.fetch_dates).to eq([Date.parse('2018-08-01'), Date.parse('2018-08-02')])
    end

    it 'should fetch all matched dates inside a given' do
      natural_date = factory.create('1 and 2 of august 2018', Date.parse('2018-01-01'))

      expect(natural_date.fetch_dates(Date.parse('2018-07-01')..Date.parse('2018-09-02'))).to eq([Date.parse('2018-08-01'), Date.parse('2018-08-02')])
      expect(natural_date.fetch_dates(Date.parse('2018-09-01')..Date.parse('2018-09-02'))).to eq([])
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
