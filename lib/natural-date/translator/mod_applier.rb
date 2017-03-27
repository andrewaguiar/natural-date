module Translator
  class ModApplier < Step
    def map tokens, _reference_date
      tokens
        .each_with_index
        .map { |token, index| apply(tokens, token, index) }
    end

    private

    def apply tokens, token, index
      if token.first == :modifier
        if token.last == :of_month
          transform_day_to_month(tokens, index)
        else
          transform_to_ordinal_week(tokens, token, index)
        end
      end

      token
    end

    def transform_to_ordinal_week tokens, token, index
      if tokens[index + 1] && tokens[index + 1].first == :week_day
        next_token = tokens[index + 1]
        tokens[index + 1] = [next_token.first, "#{token.last}.#{next_token.last}"]
      end
    end

    def transform_day_to_month tokens, index
      if tokens[index + 1] && tokens[index + 1].first == :day
        # transform day to month
        tokens[index + 1] = [:month, tokens[index + 1].last]
      end
    end
  end
end
