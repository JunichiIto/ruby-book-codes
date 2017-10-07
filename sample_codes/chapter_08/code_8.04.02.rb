require 'minitest/autorun'
require './lib/deep_freezable'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze
    # とりあえずモジュールが参照できることを確認する
    assert DeepFreezable
  end
end

# ----------------------------------------

module DeepFreezable
  def deep_freeze(array_or_hash)
    # 実装はあとで
  end
end
