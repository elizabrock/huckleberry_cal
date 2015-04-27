require_relative 'month'

class Year
  MONTH_PAD = "  "
  WIDTH = 63

  def initialize(year)
    if year < 1800 or year > 3000
      raise ArgumentError, "Year not in valid range"
    end
    @year = year
  end

  def leap?
    is_leap_year = @year % 4 == 0
    quad_century_leap_year = @year % 400 == 0
    non_leap_century_year = (@year % 100 == 0) && !quad_century_leap_year

    is_leap_year && !non_leap_century_year
  end

  def to_i
    @year.to_i
  end

  def to_s
    # Year Header
    output = @year.to_s.center(WIDTH).rstrip
    output << "\n"
    output << "\n"

    all_months = (1..12).map{ |n| Month.new(n, @year) }
    4.times do
      months = all_months.shift(3)
      month_arrays = months.map{ |m| m.to_s.split("\n") }
      # Month Header
      output << months.map{ |m| m.name.center(Month::WIDTH) }.join(MONTH_PAD).rstrip + "\n"
      month_arrays.map{ |m_array| m_array.shift } #Skip the built-in month headings

      # Month Bodies
      (Month::HEIGHT - 1).times do
        # Print the next line of the months
        next_lines = month_arrays.map{ |m_array| m_array.shift || "" }
        output << next_lines.map{ |line| line.ljust(Month::WIDTH) }.join(MONTH_PAD).rstrip + "\n"
      end
    end
    output
  end
end
