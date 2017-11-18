# iオプションを付けると大文字小文字を区別しない
/hello/i === 'HELLO'   #=> true

# %rを使った場合も最後にオプションを付けられる
%r{hello}i === 'HELLO' #=> true

# ----------------------------------------

regexp = Regexp.new('hello', Regexp::IGNORECASE)
regexp === 'HELLO' #=> true

# ----------------------------------------

# mオプションがないと.は改行文字にマッチしない
/Hello.Bye/ === "Hello\nBye"  #=> false

# mオプションを付けると.が改行文字にもマッチする
/Hello.Bye/m === "Hello\nBye" #=> true

# ----------------------------------------

regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
regexp === "Hello\nBye" #=> true

# ----------------------------------------

# xオプションを付けたので改行やスペースが無視され、コメントも書ける
regexp = /
  \d{3} # 郵便番号の先頭3桁
  -     # 区切り文字のハイフン
  \d{4} # 郵便番号の末尾4桁
/x
regexp === '123-4567' #=> true

# ----------------------------------------

regexp = /
  \d{3}
  \  # 半角スペースで区切る
  \d{4}
/x
regexp === '123 4567' #=> true

# ----------------------------------------

# バックスラッシュを特別扱いしないように'TEXT'を使う（2.8.3項参照）
pattern = <<'TEXT'
  \d{3} # 郵便番号の先頭3桁
  -     # 区切り文字のハイフン
  \d{4} # 郵便番号の末尾4桁
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
'123-4567' =~ regexp #=> 0

# ----------------------------------------

# iオプションとmオプションを同時に使う
"HELLO\nBYE" =~ /Hello.Bye/im #=> 0

# ----------------------------------------

regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
"HELLO\nBYE" =~ regexp #=> 0
