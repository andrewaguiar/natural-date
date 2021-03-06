module MonthMatcher
  def self.match? date, _reference_date, expression_map
    !expression_map[:month] || expression_map[:month].include?(date.month)
  end
end
