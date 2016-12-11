module LiteralMatcher
  def self.match? date, expression_map
    # TODO
    !expression_map[:literal] || expression_map[:literal].any? { |token| match_literal_token?(token, args) }
  end
end
