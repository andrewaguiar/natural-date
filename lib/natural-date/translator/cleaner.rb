module Translator
  class Cleaner < Step
    def map tokens, _reference_date
      tokens
        .strip
        .downcase
        .tr('ç', 'c')
        .tr('ã', 'a')
        .tr('á', 'a')
        .tr('ê', 'e')
        .tr('é', 'e')
        .gsub(/,|\./, ' ')
        .split(/\s+/)
    end
  end
end
