module Translator
  class TimeMounter < Step
    def map tokens, reference_date
      tokens
        .map { |token| normalize(token) }
    end

    private

    def normalize token
      case token.first
      when :unknown
        if time? token
          [:time, create_token_value(token.last.upcase)]
        else
          token
        end
      else token
      end
    end

    def time? token
      token_key = token.last.to_s.upcase

      %w(H AM PM :).any? do |s|
        token.last.to_s.upcase.include? s
      end
    end

    def create_token_value raw_value
      if raw_value.include? ':'
        hour, minute = raw_value.split(':')

        "#{adjust_hour(hour, raw_value)}:#{adjust_minute(minute)}"
      else
        #TODO
        raw_value
      end
    end

    def adjust_minute minute
      minute.to_i
    end

    def adjust_hour hour, raw_value
      if raw_value.include? 'PM'
        Time.parse("#{hour}pm").hour
      elsif raw_value.include? 'AM'
        Time.parse("#{hour}am").hour
      else
        hour.to_i
      end
    end
  end
end
