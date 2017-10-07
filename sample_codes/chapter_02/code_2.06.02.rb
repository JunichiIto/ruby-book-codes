# 引数がない場合は( )を付けない方が主流
def greeting
  'こんにちは'
end


# ()を付けてもよいが、省略されることが多い
def greeting()
  'こんにちは'
end


# ( )を省略できるが、引数がある場合は( )を付ける方が主流
def greeting country
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
