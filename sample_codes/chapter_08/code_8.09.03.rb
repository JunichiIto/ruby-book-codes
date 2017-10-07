module A
  def to_s
    "<A> #{super}"
  end
end

class Product
  # includeではなくprependを使う
  prepend A

  def to_s
    "<Product> #{super}"
  end
end

product = Product.new
product.to_s #=> "<A> <Product> #<Product:0x007fac2294fd38>"

# ----------------------------------------

# prependではなくincludeでモジュールAをミックスインした場合
product.to_s #=> "<Product> <A> #<Product:0x007fc6e008c790>"

# ----------------------------------------

Product.ancestors #=> [A, Product, Object, Kernel, BasicObject]

# ----------------------------------------

Product.ancestors #=> [Product, A, Object, Kernel, BasicObject]
