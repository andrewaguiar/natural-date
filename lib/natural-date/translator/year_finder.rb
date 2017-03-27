module Translator
  class YearFinder < Step
    def map tokens, reference_date
      if (years = extract_4_digits_years(tokens)).any?
        tokens[:year] = years.map(&:to_i)
      else
        apply_default_year(tokens, reference_date)
      end

      tokens
    end

    def extract_4_digits_years tokens
      tokens[:unknown].to_a.select do |t|
        t.size == 4 && t =~ /\d\d\d\d/
      end
    end

    def apply_default_year tokens, reference_date
      return unless !tokens[:week] && tokens[:day] && tokens[:month]
      return unless tokens[:day].size == 1 && tokens[:month].size == 1

      tokens[:year] = [find_year(tokens[:day].first, tokens[:month].first, reference_date)]
    end

    def find_year day, month, reference_date
      if Date.new(reference_date.year, month, day) < reference_date
        reference_date.year + 1
      else
        reference_date.year
      end
    end
  end
end
