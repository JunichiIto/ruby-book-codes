module Greeting
  def hello
    'hello.'
  end
end

module Aisatsu
  # 別のモジュールをincludeする
  include Greeting

  def konnichiwa
    'こんにちは。'
  end
end

class User
  # Aisatsuモジュールだけをincludeする
  include Aisatsu
end


user = User.new

# Aisatsuモジュールのメソッドを呼び出す
user.konnichiwa #=> "こんにちは。"

# Greetingモジュールのメソッドを呼び出す
user.hello      #=> "hello."


User.ancestors #=> [User, Aisatsu, Greeting, Object, Kernel, BasicObject]
