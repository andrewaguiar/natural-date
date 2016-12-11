module MonthMatcher
  def self.match? date, expression_map
    !expression_map[:month] || expression_map[:month].include?(date.month)
  end
end
