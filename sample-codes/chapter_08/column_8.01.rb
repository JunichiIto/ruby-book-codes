# コラム ハッシュのキーが文字列だった場合は自動的にfreezeされる

# 文字列をキーにすると、自動的にキーがfreezeされる
country = 'US'
hash = { 'Japan' => 'yen', country => 'dollar' }
hash.keys[0].frozen? #=> true
hash.keys[1].frozen? #=> true

# 文字列のキーはコピーされるため、ハッシュ内のキーと元の変数は別のオブジェクトになる
hash.keys[1].equal?(country) #=> false
