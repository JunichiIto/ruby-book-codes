# 素のMinitestではtest_ではじまるメソッドを定義する
def test_fizz_buzz
  assert_equal '1', fizz_buzz(1)
  # 省略
end

# ----------------------------------------

# RailsのMinitestではtestメソッドを使って定義できる
test 'fizz_buzz' do
  assert_equal '1', fizz_buzz(1)
  # 省略
end

# ----------------------------------------

RSpec.describe 'Fizz Buzz' do
  example 'fizz_buzz' do
    expect(fizz_buzz(1)).to eq '1'
    expect(fizz_buzz(2)).to eq '2'
    expect(fizz_buzz(3)).to eq 'Fizz'
    # 以下省略
  end
end
