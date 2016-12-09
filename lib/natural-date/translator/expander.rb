module Translator
  class Expander < Step
    def map tokens, reference_date
      tokens
      .each_with_index
      .map { |token, index| process_tokens(tokens, token, index) }
      .flatten(1)
    end

    private

    def process_tokens tokens, token, index
      token.first == :range ? create_interval(tokens, index) : [token]
    end

    def create_interval tokens, index
      d1_key = tokens[index - 1].first
      d1_value = tokens[index - 1].last.to_s.split('_').last.to_i

      d2_key = tokens[index + 1].first
      d2_value = tokens[index + 1].last.to_s.split('_').last.to_i

      range = if d1_value == d2_value
                language_bundle.types_range[d1_key]

              elsif d1_value > d2_value
                upper_range = (d1_value..(language_bundle.types_range[d1_key].to_a.max)).to_a
                lower_range = (language_bundle.types_range[d1_key].to_a.min..d2_value).to_a

                upper_range + lower_range
              else
                d1_value..d2_value
              end

      range.to_a.map { |number| [d1_key, number] }
    end
  end
end
