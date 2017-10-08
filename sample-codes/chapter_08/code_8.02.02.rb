# helloメソッドをもつGreeterモジュールを定義
module Greeter
  def hello
    'hello'
  end
end

# ----------------------------------------

# モジュールのインスタンスは作成できない
greeter = Greeter.new #=> NoMethodError: undefined method `new' for Greeter:Module

# 他のモジュールを継承して新しいモジュールを作ることはできない
module AwesomeGreeter < Greeter
end
#=> SyntaxError: syntax error, unexpected '<'
