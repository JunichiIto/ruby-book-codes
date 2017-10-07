h = { us: 'dollar', india: 'rupee' }
# 変数hのキーと値を**で展開させる
{ japan: 'yen', **h } #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# **を付けない場合は構文エラーになる
{ japan: 'yen', h }
#=> SyntaxError: syntax error, unexpected '}', expecting =>
#   { japan: 'yen', h }
#                      ^
