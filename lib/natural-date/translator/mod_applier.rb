module Translator
  class ModApplier < Step
    def map tokens, reference_date
      tokens
        .each_with_index
        .map { |token, index| apply(tokens, token, index) }
    end

    private

    def apply tokens, token, index
      if token.first == :modifier
        case token.last
        when :of_month
          if tokens[index + 1] && tokens[index + 1].first == :day
            # transform day to month
            tokens[index + 1] = [:month, tokens[index + 1].last]
          end
        else
          if tokens[index + 1] && tokens[index + 1].first == :week_day
            next_token = tokens[index + 1]
            tokens[index + 1] = [next_token.first, "#{token.last}.#{next_token.last}"]
          end
        end
      end

      token
    end
  end
end
