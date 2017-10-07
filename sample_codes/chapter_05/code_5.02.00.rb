# 空のハッシュを作成し、そのクラス名を確認する
{}.class #=> Hash


{ 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }


{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee'
}


{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee',
}


{ 'japan' => 'yen', 'japan' => '円' } #=> {"japan"=>"円"}


ハッシュ[キー] = 値


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# イタリアの通貨を追加する
currencies['italy'] = 'euro'

currencies #=> {"japan"=>"yen", "us"=>"dollar", "india"=>"rupee", "italy"=>"euro"}


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 既存の値を上書きする
currencies['japan'] = '円'

currencies #=> {"japan"=>"円", "us"=>"dollar", "india"=>"rupee"}


ハッシュ[キー]


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies['india'] #=> 'rupee'


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies['brazil'] #=> nil


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key, value|
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee


a = { 'x' => 1, 'y' => 2, 'z' => 3 }

# すべてのキーと値が同じであればtrue
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
a == b #=> true

# 並び順が異なっていてもキーと値がすべて同じならtrue
c = { 'z' => 3, 'y' => 2, 'x' => 1 }
a == c #=> true

# キー'x'の値が異なるのでfalse
d = { 'x' => 10, 'y' => 2, 'z' => 3 }
a == d #=> false


{}.size #=> 0

{ 'x' => 1, 'y' => 2, 'z' => 3 }.size #=> 3


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('japan') #=> "yen"
currencies                 #=> {"us"=>"dollar", "india"=>"rupee"}


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('italy')                               #=> nil
currencies.delete('italy') { |key| "Not found: #{key}" } #=> "Not found: italy"
