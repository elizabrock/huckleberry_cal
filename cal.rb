#!/usr/bin/env ruby

require_relative 'lib/month'

month = ARGV.first.to_i
year = ARGV.last.to_i

begin
  if ARGV.length == 1
    y = Year.new(year)
    puts y.to_s
  else
    m = Month.new(month, year)
    puts m.to_s
  end
rescue ArgumentError
  puts "Date not in acceptable format/range."
  puts "./cal.rb [month] [year]"
end
