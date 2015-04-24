require_relative 'helper'
require_relative '../lib/year'

class TestYear < Minitest::Test
  def test_years_before_1800_raise_argumenterror
    assert_raises ArgumentError do
      Year.new(1799)
    end
  end

  def test_years_after_3000_raise_argumenterror
    assert_raises ArgumentError do
      Year.new(3001)
    end
  end

  def test_non_leap_year
    refute Year.new(1901).leap?
  end

  def test_regular_leap_year
    assert Year.new(1904).leap?
  end

  def test_century_leap_year
    refute Year.new(1900).leap?
  end

  def test_quad_century_leap_year
    assert Year.new(2000).leap?
  end

  def test_to_i
    assert_equal 1909, Year.new(1909).to_i
  end

  def test_to_s
    assert_equal "1909", Year.new(1909).to_s
  end
end
