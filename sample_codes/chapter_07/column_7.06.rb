# コラム：オープンクラスやモンキーパッチの弊害
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


alice = 'I am Alice.'
# aliceというオブジェクトに特異メソッドを追加するもう一つの方法
class << alice
  def shuffle
    chars.shuffle.join
  end
end
alice.shuffle #=> " ci Ama.lIe"
