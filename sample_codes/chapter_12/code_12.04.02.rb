# jsonライブラリをrequireすると配列やハッシュでto_jsonメソッドが使えるようになる
require 'json'

user = { name: 'Alice', email: 'alice@example.com', age: 20 }

# RubyのハッシュをJSON形式の文字列に変換する
user_json = user.to_json
puts user_json #=> {"name":"Alice","email":"alice@example.com","age":20}

# JSON文字列をパースしてハッシュに変換する（キーはシンボルではなく文字列になる）
JSON.parse(user_json) #=> {"name"=>"Alice", "email"=>"alice@example.com", "age"=>20}
