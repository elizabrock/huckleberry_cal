require_relative 'year'

class Month
  attr_reader :month, :year

  LINE_WIDTH = 20
  NAMES = ["", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  def initialize(month, year)
    @month = month
    @year = Year.new(year)
  end

  LENGTHS = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  def length
    if month == 2 && year.leap?
      LENGTHS[month] + 1
    else
      LENGTHS[month]
    end
  end

  def name
    NAMES[month]
  end

  def to_s
    output = "#{name} #{year}".center(LINE_WIDTH).rstrip
    output << "\nSu Mo Tu We Th Fr Sa\n"
    output << <<EOS
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31


EOS
    output
  end
end
