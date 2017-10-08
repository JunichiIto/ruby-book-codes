# 以下のProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end
end

# 変更前のnameメソッドの実行結果
product = Product.new
product.name #=> "A great film"

# 既存の実装を変更するためにProductクラスを再オープンする
class Product
  # 既存のnameメソッドはname_originalという名前で呼び出せるようにしておく
  alias name_original name

  # nameメソッドの挙動を変える
  # （元々実装されていたnameメソッドも再利用する）
  def name
    "<<#{name_original}>>"
  end
end

# 変更後のnameメソッドの実行結果
product.name #=> "<<A great film>>"

# ----------------------------------------

# 以下のProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end
end

# prependするためのモジュールを定義する
module NameDecorator
  def name
    # prependするとsuperはミックスインした先のクラスのnameメソッドが呼び出される
    "<<#{super}>>"
  end
end

# 既存の実装を変更するためにProductクラスを再オープンする
class Product
  # includeではなくprependでミックスインする
  prepend NameDecorator
end

# エイリアスメソッドを使った場合と同じ結果が得られる
product = Product.new
product.name #=> "<<A great film>>"

# ----------------------------------------

# Productクラスと同じようにnameメソッドを持つクラスがあったとする
class User
  def name
    'Alice'
  end
end

class User
  # prependを使えばUserクラスのnameメソッドも置き換えることができる
  prepend NameDecorator
end

# Userクラスのnameメソッドを上書きすることができた！
user = User.new
user.name #=> "<<Alice>>"

# ----------------------------------------

Product.prepend NameDecorator
User.prepend NameDecorator
