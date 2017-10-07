def buy_burger(menu, drink: true, potato: true)
  # 省略
end

# saladとchickenは無効なキーワード引数なのでエラーになる
buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)
#=> ArgumentError: unknown keywords: salad, chicken

# ----------------------------------------

# 想定外のキーワードはothers引数で受け取る
def buy_burger(menu, drink: true, potato: true, **others)
  # othersはハッシュとして渡される
  puts others

  # 省略
end

buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)
#=> {:salad=>true, :chicken=>false}
