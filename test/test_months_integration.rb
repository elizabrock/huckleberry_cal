require_relative 'helper'

class TestMonthsIntegration < Minitest::Test
  def error_message
    <<EOS
Date not in acceptable format/range.
./cal.rb [month] [year]
EOS
  end

  def test_basic_month_that_starts_on_sunday
    output = `./cal.rb 02 2012`
    expected = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29

EOS
    assert_equal expected, output
  end

  def test_january
    output = `./cal.rb 01 1900`
    expected = <<EOS
    January 1900
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_regular_february
    output = `./cal.rb 02 1901`
    expected = <<EOS
   February 1901
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28

EOS
    assert_equal expected, output
  end

  def test_four_week_february
    output = `./cal.rb 02 2009`
    expected = <<EOS
   February 2009
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
    assert_equal expected, output
  end

  def test_leap_february
    output = `./cal.rb 02 1904`
    expected = <<EOS
   February 1904
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
    assert_equal expected, output
  end

  def test_century_leap_february
    output = `./cal.rb 02 2100`
    expected = <<EOS
   February 2100
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28

EOS
    assert_equal expected, output
  end

  def test_quad_century_leap_february
    output = `./cal.rb 02 2000`
    expected = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end

  def test_march
    output = `./cal.rb 03 1803`
    expected = <<EOS
     March 1803
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_april
    output = `./cal.rb 04 1964`
    expected = <<EOS
     April 1964
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_may
    output = `./cal.rb 05 2995`
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
    assert_equal expected, output
  end

  def test_june
    output = `./cal.rb 06 1886`
    expected = <<EOS
     June 1886
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_july
    output = `./cal.rb 07 2777`
    expected = <<EOS
     July 2777
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end

  def test_august
    output = `./cal.rb 08 1986`
    expected = <<EOS
    August 1986
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end

  def test_september
    output = `./cal.rb 09 1909`
    expected = <<EOS
   September 1909
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_october
    output = `./cal.rb 10 2010`
    expected = <<EOS
    October 2010
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end

  def test_november
    output = `./cal.rb 11 1811`
    expected = <<EOS
   November 1811
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_six_week_month_december
    output = `./cal.rb 12 2012`
    expected = <<EOS
   December 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, output
  end

  def test_earliest_acceptable_date
    output = `./cal.rb 1 1800`
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_latest_acceptable_date
    output = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_latest_unacceptable_date
    output = `./cal.rb 12 1799`
    assert_equal output, error_message
  end

  def test_earliest_unacceptable_date
    output = `./cal.rb 1 3001`
    assert_equal output, error_message
  end

  def test_bad_format_with_arguments_swapped
    output = `./cal.rb 1999 12`
    assert_equal output, error_message
  end

  def test_bad_format_with_spelled_out_month
    output = `./cal.rb December 2012`
    assert_equal output, error_message
  end
end
