require './lib/deep_freezable'

class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end


require './lib/deep_freezable'

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end


require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  # 省略


class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか？
    assert_equal(['Japan', 'US', 'India'], Team::COUNTRIES)
    # 配列自身がfreezeされているか？
    assert Team::COUNTRIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end
end


module DeepFreezable
  def deep_freeze(array_or_hash)
    # 配列の各要素をfreeze
    array_or_hash.each do |element|
      element.freeze
    end
    # 配列自身をfreeze（かつ、これがメソッドの戻り値となる）
    array_or_hash.freeze
  end
end


# freezeメソッドはレシーバ自身を返す
[1, 2, 3].freeze #=> [1, 2, 3]
