class NaturalDateExpression
  VERSION = "1.5"

  class DateMatch
    attr_reader :first_matched_expression, :tested_date, :reference_date

    def initialize match, first_matched_expression, tested_date, reference_date
      @match = match
      @first_matched_expression = first_matched_expression
      @tested_date = tested_date
      @reference_date = reference_date
    end

    def matches?
      @match
    end
  end

  def initialize data, reference_date, expression_string
    @data = data
    @reference_date = reference_date
    @expression_string = expression_string
  end

  def match?
    match(date).matches?
  end

  def =~ date
    match(date).matches?
  end

  MATCHERS = [
    WeekMatcher,
    MonthMatcher,
    DayMatcher,
    YearMatcher
  ].freeze

  def match date
    matches = @data.map do |expression_map|
      MATCHERS.map { |matcher| matcher.match?(date, @reference_date, expression_map) }.all?
    end

    DateMatch.new(matches.any?,
                  (matches.any?? @data[matches.each_with_index.find { |exp, index| exp }.last] : nil),
                  @date,
                  @reference_date)
  end

  def recurrent?
    @data.map { |expression_map| !(expression_map[:day] && expression_map[:month]) }.any?
  end

  def data
    @data.dup
  end

  def fetch_dates dates_range = nil
    (dates_range || (@reference_date..(@reference_date + 365))).to_a.select { |date| self =~ date }
  end
end
