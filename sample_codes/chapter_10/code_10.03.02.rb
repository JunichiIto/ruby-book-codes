def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# ----------------------------------------

def greeting(&block)
  # blockが何クラスのインスタンスなのかを表示する
  puts block.class

  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end
#=> Proc
#   おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを作成し、それをgreetingメソッドに渡す
repeat_proc = proc { |text| text * 2 }
greeting(&repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

# &なしで呼び出すと普通の引数を1つ渡したことになる
greeting(repeat_proc) #=> ArgumentError: wrong number of arguments (given 1, expected 0)
