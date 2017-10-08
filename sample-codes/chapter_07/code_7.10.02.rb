class User
  # freezeメソッドの定義を削除する
  undef freeze
end
user = User.new
# freezeメソッドを呼び出すとエラーになる
user.freeze #=> NoMethodError: undefined method `freeze' for #<User:0x007fea4d0c4d08>
