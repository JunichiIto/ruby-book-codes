class User
  # 省略

  # def name=(name) のように書くつもりがうっかり書き間違えた
  def name
    # 右辺のnameは引数や変数ではなく、このnameメソッド自身になるので無限ループする
    @name = name
  end
end
user = User.new
user.name #=> SystemStackError: stack level too deep
