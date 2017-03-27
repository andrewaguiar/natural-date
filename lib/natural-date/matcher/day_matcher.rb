module DayMatcher
  def self.match? date, _reference_date, expression_map
    !expression_map[:day] || expression_map[:day].include?(date.day)
  end
end
