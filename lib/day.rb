class Day
  def initialize(month, day, year)
    @month = month
    @day = day
    @year = year
  end

  # This converts Zeller's Congruence (below) into a useful number
  def day_of_week
    # Zellers: 0 = Saturday, 1 = Sunday, 2 = Monday, ..., 6 = Friday
    # day_of_week: 1 = Sunday, 7 = Saturday
    (zellers_congruence + 6) % 7
  end

  private

  # See: http://en.wikipedia.org/wiki/Zeller%27s_congruence
  def zellers_congruence
    adjusted_year = @year
    # q is the day of the month
    q = @day
    # m is the month (3 = March, 4 = April, 5 = May, ..., 14 = February)
    m = @month
    # In this algorithm January and February are counted as months 13 and 14 of the previous year. E.g. if it is 2 February 2010, the algorithm counts the date as the second day of the fourteenth month of 2009 (02/14/2009 in DD/MM/YYYY format)
    if m < 3
      m += 12
      adjusted_year -= 1
    end

    # K the year of the century (year \mod 100).
    k = adjusted_year % 100

    # J is the zero-based century (actually \lfloor year/100 \rfloor) For example, the zero-based centuries for 1995 and 2000 are 19 and 20 respectively (to not be confused with the common ordinal century enumeration which indicates 20th for both cases).
    j = (adjusted_year / 100).floor
    # h is the day of the week (0 = Saturday, 1 = Sunday, 2 = Monday, ..., 6 = Friday)
    h = ( q + ( 13 * (m+1) / 5 ).floor + k + ( k / 4 ).floor + ( j / 4 ).floor + 5*j) % 7
    h
  end
end
