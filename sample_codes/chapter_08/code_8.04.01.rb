module DeepFreezable
  def deep_freeze(array_or_hash)
    # deep_freezeメソッドの実装
  end
end

# ----------------------------------------

class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
