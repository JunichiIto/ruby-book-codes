def add(a, b)
  # returnも使えるが、使わない方が主流
  return a + b
end
add(1, 2) #=> 3

# ----------------------------------------

def greeting(country)
  # "こんにちは"または"hello"がメソッドの戻り値になる
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting('japan') #=> "こんにちは"
greeting('us')    #=> "hello"

# ----------------------------------------

def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  # （nil?はオブジェクトがnilの場合にtrueを返すメソッド）
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting(nil)     #=> "countryを入力してください"
greeting('japan') #=> "こんにちは"
