module Translator
  class YearFinder < Step
    def map tokens, reference_date
      if (years = tokens[:unknown].to_a.select { |t| t.size == 4 && t =~ /\d\d\d\d/ }).any?
        tokens[:year] = years.map &:to_i
      else
        if !tokens[:week] && tokens[:day] && tokens[:month]
          if tokens[:day].size == 1 && tokens[:month].size == 1
            tokens[:year] = [find_year(tokens[:day].first, tokens[:month].first, reference_date)]
          end
        end
      end

      tokens
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
