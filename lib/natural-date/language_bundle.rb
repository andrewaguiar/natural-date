module Translator
  class LanguageBundle
    BUNDLES ||= {}

    attr_reader :types_range, :types_map, :values, :months, :values_map, :separator_regexp

    def initialize lang
      @lang = lang.freeze

      @types_range = { week_day: 0..6, month: 1..12 }.freeze
      @types_map = load_types_map.freeze
      @values = load_values.freeze
      @months = load_months.freeze
      @values_map = @values.map { |key, value| value.split(' ').map { |v| { v => key } } }.flatten.reduce({}) { |e, map| map.merge(e) }.freeze
      @separator_regexp = Regexp.new(@types_map.select { |_k, v| v == :separator }.keys.map { |k| " #{k} " }.join '|').freeze
    end

    def self.fetch lang
      BUNDLES[lang] ||= LanguageBundle.new(lang)
    end

    private

    def yaml
      @yaml ||= begin
                  base_path = File.dirname(File.expand_path(__FILE__))
                  YAML::load_file(File.join(base_path, 'translator', "#{@lang}.yml"))
                end
    end

    def load_types_map
      yaml['keys']
      .map{ |k, v| { k => v.values.join(' ') } }
      .reduce({}){ |map, element| map.merge(element) }
      .map { |k, vs| vs.split(' ').map { |v| { v => k.to_sym } } }
      .flatten
      .reduce({}) { |e, map| map.merge(e) }
    end

    def load_values
      yaml['keys']
      .values
      .reduce({}) { |map, element| map.merge(symbolize_keys(element)) }
      .reject { |k, _v| k == :value }
    end

    def symbolize_keys m
      m.map{ |k, v| {k.to_sym => v} }.reduce({}) { |map, element| map.merge(element) }
    end

    def load_months
      yaml['keys']['month'].values.map { |m| m.split.first }
    end
  end
end
