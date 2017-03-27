module YearMatcher
  def self.match? date, reference_date, expression_map
    return expression_map[:year].include?(date.year) if expression_map[:year]
    return true if expression_map[:week_day] || !expression_map[:day] || !expression_map[:month]

    date.year == reference_date.year
  end
end
