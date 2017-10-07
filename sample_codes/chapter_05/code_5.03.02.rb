# 文字列をハッシュのキーにする
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# 文字列を使って値を取り出す
currencies['japan'] #=> "yen"

# シンボルをハッシュのキーにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# シンボルを使って値を取り出す（文字列より高速）
currencies[:japan] #=> "yen"

# ----------------------------------------

'apple'.methods #=> [:include?, :unicode_normalize, ...以下省略]

:apple.methods  #=> [:<=>, :==, :===, ...以下省略]
