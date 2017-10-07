module StringShuffle
  # refinementsが目的なので、refineメソッドを使う
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

# ----------------------------------------

# 通常はStringクラスにshuffleメソッドはない
'Alice'.shuffle #=> NoMethodError: undefined method `shuffle' for "Alice":String

class User
  # refinementsを有効化する
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    # Userクラスの内部であればStringクラスのshuffleメソッドが有効になる
    @name.shuffle
  end

  # Userクラスを抜けるとrefinementsは無効になる
end

user = User.new('Alice')
# Userクラス内ではshuffleメソッドが有効になっている
user.shuffled_name #=> "cliAe"

# Userクラスを経由しない場合はshuffleメソッドは使えない
'Alice'.shuffle #=> NoMethodError: undefined method `shuffle' for "Alice":String

# ----------------------------------------

# StringShuffleモジュールを読み込む
require './string_shuffle'

# ここではまだshuffleメソッドが使えない
# p 'Alice'.shuffle

# トップレベルでusingすると、ここからファイルの最後までshuffleメソッドが有効になる
using StringShuffle

puts 'Alice'.shuffle #=> ecAli

class User
  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name #=> cilAe

puts 'Alice'.shuffle    #=> liceA

# 他のファイルではshuffleメソッドは使えない

# ----------------------------------------

module SomeModule
  refine Object do
    # Objectクラスに対する変更
  end

  refine String do
    # Stringクラスに対する変更
  end
end

# ----------------------------------------

module SomeModule
  # Ruby 2.4からはモジュールもrefine可能
  refine Enumerable do
    # Enumerableモジュールに対する変更
  end
end
