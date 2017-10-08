def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# 引数が少ない
greeting
#=> ArgumentError: wrong number of arguments (given 0, expected 1)

# 引数がちょうど
greeting('us') #=> "hello"

# 引数が多い
greeting('us', 'japan')
#=> ArgumentError: wrong number of arguments (given 2, expected 1)

# ----------------------------------------

# 引数なしの場合はcountryに'japan'を設定する
def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greeting       #=> "こんにちは"
greeting('us') #=> "hello"

# ----------------------------------------

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
default_args(1, 2)       #=> "a=1, b=2, c=0, d=0"
default_args(1, 2, 3)    #=> "a=1, b=2, c=3, d=0"
default_args(1, 2, 3, 4) #=> "a=1, b=2, c=3, d=4"

# ----------------------------------------

# システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo #=> time: 2017-05-10 09:16:35 +0900, message: BAR
