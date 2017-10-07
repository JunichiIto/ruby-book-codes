# コラム：よく使われるイディオム 1. 条件分岐で変数に代入
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }

# 特定のキーに対応する値を取得する（キーがなければnil）
currency = currencies[:japan]
# 値が取得できていたら値を大文字に変換して出力する
if currency
  puts currency.upcase
end
#=> YEN


currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }

# 値が取得できれば条件分岐は真になり、できなければ偽になる
if currency = currencies[:japan]
  puts currency.upcase
end
#=> YEN


currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }

# &.を使うとcurrencies[:japan]がnilでもupcaseメソッドが呼べる（nilが返る）
currencies[:japan]&.upcase  #=> YEN
currencies[:brazil]&.upcase #=> nil
