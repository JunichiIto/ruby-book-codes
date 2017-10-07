class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 省略
  end

  def test_deep_freeze_to_hash
    # ハッシュの値は正しいか？
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    # ハッシュ自身がfreezeされているか？
    assert Bank::CURRENCIES.frozen?
    # ハッシュの要素（キーと値）がすべてfreezeされているか？
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end

# ----------------------------------------

module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end
