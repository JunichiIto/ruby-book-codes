class Foo
  # 注：このputsはクラス定義の読み込み時に呼び出される
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
#=> クラス構文の直下のself: Foo

Foo.bar #=> クラスメソッド内のself: Foo

foo = Foo.new
foo.baz #=> インスタンスメソッド内のself: #<Foo:0x007f9d7c0467c8>


class Foo
  def self.bar
    # クラスメソッドからインスタンスメソッドを呼び出す（エラー）
    self.baz
  end

  def baz
    # インスタンスメソッドからクラスメソッドを呼び出す（エラー）
    self.bar
  end
end

Foo.bar #=> NoMethodError: undefined method `baz' for Foo:Class

foo = Foo.new
foo.baz #=> NoMethodError: undefined method `bar' for #<Foo:0x007fbffc094070>


class Foo
  # この時点ではクラスメソッドbarが定義されていないので呼び出せない
  # （NoMethodErrorが発生する）
  # self.bar

  def self.bar
    puts 'hello'
  end

  # クラス構文の直下でクラスメソッドを呼び出す
  # （クラスメソッドbarが定義された後なので呼び出せる）
  self.bar
end
#=> hello


class Foo
  # クラス定義が読み込まれたタイミングで"Hello!"を3回出力する
  3.times do
    puts 'Hello!'
  end
end
#=> Hello!
#   Hello!
#   Hello!
