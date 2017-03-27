module Translator
  class SplitterLiteralDate < Step
    def map tokens, _reference_date
      tokens.map do |token|
        if token.include? '/'
          translate_day_and_month(token.split('/'))
        else
          [token]
        end
      end.flatten
    end

    private

    def translate_day_and_month parts
      [ parts[0].to_i.to_s, language_bundle.months[parts[1].to_i - 1] ]
    end
  end
end
