class Product
  DEFAULT_PRICE = 0
end

Product::DEFAULT_PRICE #=> 0

# ----------------------------------------

class Product
  DEFAULT_PRICE = 0
  # 定数をprivateにする
  private_constant :DEFAULT_PRICE
end

# privateなのでクラスの外部からは参照できない
Product::DEFAULT_PRICE #=> NameError: private constant Product::DEFAULT_PRICE referenced

# ----------------------------------------

class Product
  def foo
    # メソッドの内部で定数を作成すると構文エラーになる
    DEFAULT_PRICE = 0
  end
end
#=> SyntaxError: dynamic constant assignment
#       DEFAULT_PRICE = 0
#                      ^
