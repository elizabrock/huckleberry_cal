#!/usr/bin/env ruby

require_relative 'lib/month'

month = ARGV[0]
year = ARGV[1]

m = Month.new(month.to_i, year.to_i)
puts m.to_s
