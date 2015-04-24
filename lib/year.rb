class Year
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
    @year.to_s
  end
end
