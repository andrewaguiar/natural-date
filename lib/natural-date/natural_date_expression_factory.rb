class NaturalDateExpressionFactory
  def initialize lang
    @lang = lang
  end

  STEPS = {}
  EXPRESSION_SPLITTER_STEP = {}

  def create expression_string, reference_date = Date.today
    NaturalDateExpression.new(create_data_expression(expression_string, reference_date), reference_date, expression_string)
  end

  private

  def create_data_expression expression_string, reference_date
    expression_splitter.map(expression_string.to_s).map do |expression|
      steps.reduce(expression) do |tokens, step|
        step.map(tokens, reference_date)
      end
    end
  end

  def expression_splitter
    EXPRESSION_SPLITTER_STEP[@lang] ||= begin
                                          Translator::ExpressionSplitter.new.tap do |step|
                                            step.language_bundle = Translator::LanguageBundle.fetch(@lang)
                                          end
                                        end
  end

  def steps
    STEPS[@lang] ||= step_classes.map do |step_class|
      step_class.new.tap do |step|
        step.language_bundle = Translator::LanguageBundle.fetch(@lang)
      end
    end
  end

  def step_classes
    [ Translator::Cleaner,
      Translator::SplitterLiteralDate,
      Translator::Mounter,
      Translator::TimeMounter,
      Translator::Normalizer,
      Translator::Expander,
      Translator::ModApplier,
      Translator::Minifier,
      Translator::YearFinder,
      Translator::UnknownCleaner ].freeze
  end
end
