module WeekMatcher
  def self.match? date, expression_map
    !expression_map[:week_day] || expression_map[:week_day].any? { |token| match_week_token?(token, date) }
  end

  private

  def self.match_month? date, expression_map
    !expression_map[:month] || expression_map[:month].include?(date.month)
  end

  def self.match_week_token? token, date
    return match_nth_week_token?(token, date) if token.to_s.include?('.')
    token.to_i == date.wday
  end

  def self.match_nth_week_token? token, date
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
