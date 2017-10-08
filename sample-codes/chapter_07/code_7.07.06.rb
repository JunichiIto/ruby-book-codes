class User
  # いったんpublicメソッドとして定義する
  def foo
    'foo'
  end

  def bar
    'bar'
  end

  # fooとbarをprivateメソッドに変更する
  private :foo, :bar

  # bazはpublicメソッド
  def baz
    'baz'
  end
end

user = User.new
user.foo #=> NoMethodError: private method `foo' called for #<User:0x007fea4d08e118>
user.bar #=> NoMethodError: private method `bar' called for #<User:0x007fea4d08e118>
user.baz #=> "baz"
