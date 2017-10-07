# コラム：Minitest以外のフレームワーク

require './lib/fizz_buzz'

RSpec.describe 'Fizz Buzz' do
  example 'fizz_buzz' do
    expect(fizz_buzz(1)).to eq '1'
    expect(fizz_buzz(2)).to eq '2'
    expect(fizz_buzz(3)).to eq 'Fizz'
    # 以下省略
  end
end

# ----------------------------------------

require 'test/unit'
require './lib/fizz_buzz'

class FizzBuzzTest < Test::Unit::TestCase
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
    # 以下省略
  end
end
