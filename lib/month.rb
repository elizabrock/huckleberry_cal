require_relative 'day'
require_relative 'year'

class Month
  attr_reader :month, :year

  DAY_WIDTH = 2
  LINE_WIDTH = 20
  LENGTHS = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  HEIGHT = 8
  NAMES = ["", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  def initialize(month, year)
    @month = month
    @year = Year.new(year)
  end

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
    number_of_lines = 2

    days_of_month = (1..length).to_a
    first_of_month = Day.new(month, 1, year.to_i)
    first_of_month.day_of_week.times do
      days_of_month.unshift("")
    end

    days_of_month.map!{ |day| day.to_s.rjust(DAY_WIDTH) }
    days_of_month.each_slice(7) do |weekdays|
      output << weekdays.join(" ") + "\n"
      number_of_lines += 1
    end

    (HEIGHT - number_of_lines).times do
      output << "\n"
    end
    output
  end
end
