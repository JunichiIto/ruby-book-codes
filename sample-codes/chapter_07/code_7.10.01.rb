s = 'Hello'
s.length #=> 5
s.size   #=> 5

# ----------------------------------------

class User
  def hello
    'Hello!'
  end

  # helloメソッドのエイリアスメソッドとしてgreetingを定義する
  alias greeting hello
end

user = User.new
user.hello    #=> "Hello!"
user.greeting #=> "Hello!"
