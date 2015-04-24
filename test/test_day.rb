require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

  def test_sunday_is_0
    assert_equal 0, Day.new(01, 01, 2012).day_of_week
  end

  def test_monday_is_1
    assert_equal 1, Day.new(11, 27, 2000).day_of_week
  end

  def test_tuesday_is_2
    assert_equal 2, Day.new(11, 14, 2000).day_of_week
  end

  def test_wednesday_is_3
    assert_equal 3, Day.new(11, 01, 2000).day_of_week
  end

  def test_thursday_is_4
    assert_equal 4, Day.new(01, 05, 2012).day_of_week
  end

  def test_friday_is_5
    assert_equal 5, Day.new(02, 01, 1799).day_of_week
  end

  def test_saturday_is_6
    assert_equal 6, Day.new(03, 01, 2014).day_of_week
  end

  def test_edge_of_a_century
    assert_equal 6, Day.new(01, 01, 2000).day_of_week
  end
end
