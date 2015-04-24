require_relative 'helper'
require_relative '../lib/month'

class TestMonth < Minitest::Test
  def test_initializing_a_month_saves_values
    m = Month.new(05, 2015)
    assert_equal 05, m.month
    assert_equal 2015, m.year.to_i
  end

  def test_month_doesnt_accept_values_less_than_0
    assert_raises ArgumentError do
      Month.new(-1, 2012)
    end
    assert_raises ArgumentError do
      Month.new(0, 2012)
    end
  end

  def test_month_doesnt_accept_values_greater_than_12
    assert_raises ArgumentError do
      Month.new(13, 2012)
    end
    assert_raises ArgumentError do
      Month.new(125, 2012)
    end
  end

  def test_length_of_january
    assert_equal 31, Month.new(01, 2021).length
  end

  def test_length_of_regular_february
    assert_equal 28, Month.new(02, 1901).length
  end

  def test_length_of_leap_february
    assert_equal 29, Month.new(02, 1904).length
  end

  def test_length_of_march
    assert_equal 31, Month.new(03, 2021).length
  end

  def test_length_of_april
    assert_equal 30, Month.new(04, 2021).length
  end

  def test_length_of_may
    assert_equal 31, Month.new(05, 2021).length
  end

  def test_length_of_june
    assert_equal 30, Month.new(06, 2021).length
  end

  def test_length_of_july
    assert_equal 31, Month.new(07, 2021).length
  end

  def test_length_of_august
    assert_equal 31, Month.new(8, 2021).length
  end

  def test_length_of_september
    assert_equal 30, Month.new(9, 2021).length
  end

  def test_length_of_october
    assert_equal 31, Month.new(10, 2021).length
  end

  def test_length_of_november
    assert_equal 30, Month.new(11, 2021).length
  end

  def test_length_of_december
    assert_equal 31, Month.new(12, 2021).length
  end

  def test_name_for_march
    m = Month.new(04, 2009)
    assert_equal m.name, "April"
  end

  def test_name_for_january
    m = Month.new(01, 2009)
    assert_equal m.name, "January"
  end

  def test_name_for_december
    m = Month.new(12, 2009)
    assert_equal m.name, "December"
  end

  def test_to_s_on_jan_2012
    m = Month.new(01, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_jan_2017
    m = Month.new(01, 2017)
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_06_3000
    m = Month.new(06, 3000)
    expected = <<EOS
     June 3000
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_05_1809
    m = Month.new(05, 1809)
    expected = <<EOS
      May 1809
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_mar_2009
    m = Month.new(03, 2009)
    expected = <<EOS
     March 2009
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_4_week_month
    m = Month.new(02, 2009)
    expected = <<EOS
   February 2009
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_6_week_month
    m = Month.new(05, 2995)
    expected = <<EOS
      May 2995
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, m.to_s
  end
end
