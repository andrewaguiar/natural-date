class NaturalDateExpression
  VERSION = "1.1"

  def initialize data, reference_date, expression_string
    @data = data
    @reference_date = reference_date
    @expression_string = expression_string
  end

  def match date
    matches = @data.map do |expression_map|
      match_week?(date, expression_map) &&
        match_month?(date, expression_map) &&
        match_literal?(date, expression_map) &&
        match_day?(date, expression_map) &&
        match_year?(date, expression_map)
    end

    first_matched_expression = if matches.any?
                                 @data[matches.each_with_index.find { |exp, index| exp }.last]
                               else
                                 nil
                               end

    { match: matches.any?,
      first_matched_expression: first_matched_expression }
  end

  def recurrent?
    @data.map { |expression_map| !(expression_map[:day] && expression_map[:month]) }.any?
  end

  def data
    @data.dup
  end

  def fetch_dates dates_range = nil
    (dates_range || (Date.today..(Date.today + 365))).to_a.select do |date|
      match(date).fetch(:match)
    end
  end

  private

  def match_year? date, expression_map
    return expression_map[:year].include?(date.year) if expression_map[:year]
    return true if expression_map[:week_day] || !expression_map[:day] || !expression_map[:month]

    date.year == @reference_date.year
  end

  def match_day? date, expression_map
    !expression_map[:day] || expression_map[:day].include?(date.day)
  end

  def match_literal? date, expression_map
    !expression_map[:literal] || expression_map[:literal].any? { |token| match_literal_token?(token, args) }
  end

  def match_week? date, expression_map
    !expression_map[:week_day] || expression_map[:week_day].any? { |token| match_week_token?(token, date) }
  end

  def match_month? date, expression_map
    !expression_map[:month] || expression_map[:month].include?(date.month)
  end

  def match_week_token? token, date
    return match_nth_week_token?(token, date) if token.to_s.include?('.')
    token.to_i == date.wday
  end

  def match_nth_week_token? token, date
    nth, token_wday = token.split('.')

    wdays = (date.beginning_of_month..date.end_of_month).to_a.select do |day|
      day.wday == token_wday.to_i
    end

    case nth
    when 'first_1'
      wdays.first == date
    when 'last_999'
      wdays.last == date
    when 'prior_last_999'
      wdays[wdays.size - 2] == date
    else
      wdays[nth.to_i - 1] == date
    end
  end
end
