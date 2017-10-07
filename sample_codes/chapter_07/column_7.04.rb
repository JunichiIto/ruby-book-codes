# コラム：クラスの可視性について

class User
  # このようなクラス定義はエラーになる
  private class BloodType
    # 省略
  end
end
#=> TypeError: nil is not a symbol nor a string
