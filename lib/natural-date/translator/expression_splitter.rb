module Translator
  class ExpressionSplitter < Step
    def map tokens
      tokens
        .lines
        .map { |l| l.strip }
        .join(';')
        .gsub(';', ' ; ')
        .split(language_bundle.separator_regexp)
    end
  end
end
