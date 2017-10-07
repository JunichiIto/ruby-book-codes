:apple
:japan
:ruby_is_fun

# ----------------------------------------

'apple'
'japan'
'ruby_is_fun'

# ----------------------------------------

:apple.class  #=> Symbol
'apple'.class #=> String

# ----------------------------------------

# 文字列よりもシンボルの方が高速に比較できる
'apple' == 'apple'
:apple  == :apple

# ----------------------------------------

:apple.object_id #=> 1143388
:apple.object_id #=> 1143388
:apple.object_id #=> 1143388

'apple'.object_id #=> 70223819213380
'apple'.object_id #=> 70223819233120
'apple'.object_id #=> 70223819227780

# ----------------------------------------

# 文字列は破壊的な変更が可能
string = 'apple'
string.upcase!
string #=> "APPLE"

# シンボルはイミュータブルなので、破壊的な変更は不可能
symbol = :apple
symbol.upcase! #=> NoMethodError: undefined method `upcase!' for :apple:Symbol

# ----------------------------------------

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
