module Translator
  class Mounter < Step
    def map tokens, _reference_date
      tokens
      .map { |expression_token| [extract_token_type(expression_token), extract_token_value(expression_token)] }
    end

    private

    def extract_token_type expression_token
      language_bundle.types_map.fetch(expression_token, :unknown)
    end

    def extract_token_value expression_token
      language_bundle.values_map.fetch(expression_token, expression_token)
    end
  end
end
