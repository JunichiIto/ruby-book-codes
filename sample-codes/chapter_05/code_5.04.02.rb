# NOTE: 2019-09-17にコメントを訂正 http://gihyo.jp/book/2017/978-4-7741-9397-7/support
# 文字列のキーとシンボルのキーを混在させる
hash = { 'abc' => 123, def: 456 }

# 値を取得する場合はデータ型を合わせてキーを指定する
hash['abc'] #=> 123
hash[:def]  #=> 456

# データ型が異なると値は取得できない
hash[:abc]  #=> nil
hash['def'] #=> nil

# ----------------------------------------

person = {
  # 値が文字列
  name: 'Alice',
  # 値が数値
  age: 20,
  # 値が配列
  friends: ['Bob', 'Carol'],
  # 値がハッシュ
  phones: { home: '1234-0000', mobile: '5678-0000' }
}

person[:age]             #=> 20
person[:friends]         #=> ["Bob", "Carol"]
person[:phones][:mobile] #=> "5678-0000"
