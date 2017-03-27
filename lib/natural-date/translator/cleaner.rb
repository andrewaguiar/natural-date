module Translator
  class Cleaner < Step
    def map tokens, _reference_date
      tokens
        .strip
        .downcase
        .gsub('ç', 'c')
        .gsub('ã', 'a')
        .gsub('á', 'a')
        .gsub('ê', 'e')
        .gsub('é', 'e')
        .gsub(/,|\./, ' ')
        .split(/\s+/)
    end
  end
end
