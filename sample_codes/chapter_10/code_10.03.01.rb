# "Hello!"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new do
  'Hello!'
end

# do ... endのかわりに{}を使ってもよい
hello_proc = Proc.new { 'Hello!' }


hello_proc = Proc.new { 'Hello!' }
hello_proc.call #=> "Hello!"


add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20) #=> 30


add_proc = Proc.new { |a = 0, b = 0| a + b }
add_proc.call         #=> 0
add_proc.call(10)     #=> 10
add_proc.call(10, 20) #=> 30


# Proc.newのかわりにprocメソッドを使う
add_proc = proc { |a, b| a + b }
