alice = 'I am Alice.'
bob = 'I am Bob.'

# aliceのオブジェクトにだけ、shuffleメソッドを定義する
def alice.shuffle
  chars.shuffle.join
end

# aliceはshuffleメソッドを持つが、bobは持たない
alice.shuffle #=> "m le a.icIA"
bob.shuffle   #=> NoMethodError: undefined method `shuffle' for "I am Bob.":String

# ----------------------------------------

n = 1
def n.foo
  'foo'
end
#=> TypeError: can't define singleton

sym = :alice
def sym.bar
  'bar'
end
#=> TypeError: can't define singleton

# ----------------------------------------

alice = 'I am Alice.'
# aliceというオブジェクトに特異メソッドを追加するもう一つの方法
class << alice
  def shuffle
    chars.shuffle.join
  end
end
alice.shuffle #=> " ci Ama.lIe"
