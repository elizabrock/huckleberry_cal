#!/usr/bin/env ruby

require_relative 'lib/month'

month = ARGV[0].to_i
year = ARGV[1].to_i

begin
  m = Month.new(month, year)
  puts m.to_s
rescue ArgumentError
  puts "Date not in acceptable format/range."
  puts "./cal.rb [month] [year]"
end
