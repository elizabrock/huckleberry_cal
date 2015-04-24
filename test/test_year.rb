require_relative 'helper'
require_relative '../lib/year'

class TestYear < Minitest::Test
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
