module Translator
  class Minifier < Step
    def map tokens, reference_date
      tokens
      .group_by(&:first)
      .map { |key, value| { key => value.map(&:last) } }
      .reduce({}) { |map, values| map.merge(values) }
    end
  end
end
