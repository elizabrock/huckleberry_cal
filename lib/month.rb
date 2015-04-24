class Month
  attr_reader :month, :year

  LINE_WIDTH = 20
  NAMES = ["", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  def initialize(month, year)
    @month = month
    @year = year
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
