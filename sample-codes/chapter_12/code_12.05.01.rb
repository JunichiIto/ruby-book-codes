# 組み込み定数の初期値を確認する
RUBY_VERSION #=> "2.4.1"

# 組み込み定数に再代入する（よくない）
RUBY_VERSION = 123 #=> warning: already initialized constant RUBY_VERSION

# 組み込み定数の値が変わる
RUBY_VERSION #=> 123
