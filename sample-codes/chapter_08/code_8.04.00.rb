class Team
  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end
# 配列自身と配列の全要素がfreezeされている
Team::COUNTRIES.frozen?  #=> true
Team::COUNTRIES.all? { |country| country.frozen? } #=> true

class Bank
  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
# ハッシュ自身とハッシュの全要素（キーと値）がfreezeされている
Bank::CURRENCIES.frozen?       #=> true
Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? } #=> true
