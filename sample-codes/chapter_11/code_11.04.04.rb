require 'minitest/autorun'
require './lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    require 'byebug'; byebug
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    # 以下省略

# ----------------------------------------

require 'byebug'
byebug
