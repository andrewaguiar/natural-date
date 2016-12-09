module Translator
  class UnknownCleaner < Step
    def map tokens, reference_date
      tokens
      .reject { |key| %i(unknown modifier).include? key }
    end
  end
end
