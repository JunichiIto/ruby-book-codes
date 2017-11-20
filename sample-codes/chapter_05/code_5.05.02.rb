require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, 'm', 'in')
    assert_equal 0.38, convert_length(15, 'in', 'm')
  end
end

# ----------------------------------------

units = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }

# ----------------------------------------

def convert_length(length, unit_from, unit_to)
  units = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }
  (length / units[unit_from] * units[unit_to]).round(2)
end

# ----------------------------------------

require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    # NOTE: 2017-11-20に訂正 http://gihyo.jp/book/2017/978-4-7741-9397-7/support
    assert_equal 39.37, convert_length(1, 'm', 'in')
    assert_equal 0.38, convert_length(15, 'in', 'm')
    assert_equal 10670.73, convert_length(35000, 'ft', 'm')
  end
end
