def greeting
  puts 'おはよう'
  puts 'こんばんは'
end

# ----------------------------------------

greeting
#=> おはよう
#   こんばんは

# ----------------------------------------

greeting do
  puts 'こんにちは'
end
#=> おはよう
#   こんばんは

# ----------------------------------------

def greeting
  puts 'おはよう'
  # ここでブロックの処理を呼び出す
  yield
  puts 'こんばんは'
end

# ----------------------------------------

greeting do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは

# ----------------------------------------

def greeting
  puts 'おはよう'
  # ブロックを2回呼び出す
  yield
  yield
  puts 'こんばんは'
end

greeting do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんにちは
#   こんばんは

# ----------------------------------------

greeting
#=> おはよう
#   LocalJumpError: no block given (yield)

# ----------------------------------------

def greeting
  puts 'おはよう'
  # ブロックが渡された場合のみyieldを呼び出す
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greeting
#=> おはよう
#   こんばんは

greeting do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは

# ----------------------------------------

def greeting
  puts 'おはよう'
  # ブロックに引数を渡し、戻り値を受け取る
  text = yield 'こんにちは'
  # ブロックの戻り値をコンソールに出力する
  puts text
  puts 'こんばんは'
end

greeting do |text|
  # yieldで渡された文字列を2回繰り返す
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

def greeting
  puts 'おはよう'
  # 引数を2つ渡す
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

greeting do |text|
  # ブロック引数が1つであれば、2つ目の引数は無視される
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

def greeting
  puts 'おはよう'
  # 引数を1つ渡す
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greeting do |text, other|
  # ブロック引数が2つであれば、2つ目の引数はnilになる
  text * 2 + other.inspect
end
#=> おはよう
#   こんにちはこんにちはnil
#   こんばんは
