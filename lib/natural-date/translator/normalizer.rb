module Translator
  class Normalizer < Step
    def map tokens, _reference_date
      tokens
      .map { |token| normalize(token) }
    end

    private

    def normalize token
      case token.first
      when :day then [token.first, token.last.to_s.split('_').last.to_i]
      when :month then [token.first, token.last.to_s.split('_').last.to_i]
      when :week_day then [token.first, token.last.to_s.split('_').last.to_i]
      else token
      end
    end
  end
end
