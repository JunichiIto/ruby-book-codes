a = 'ruby'

# upcaseだと変数aの値は変化しない
a.upcase  #=> "RUBY"
a         #=> 'ruby'

# upcase!だと変数aの値も大文字に変わる
a.upcase! #=> "RUBY"
a         #=> "RUBY"

# ----------------------------------------

def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
reverse_upcase!(s) #=> "YBUR"
s #=> "YBUR"

# ----------------------------------------

odd? = 1.odd?
#=> SyntaxError: syntax error, unexpected '='
#   odd? = 1.odd?
#         ^

upcase! = 'ruby'.upcase!
#=> SyntaxError: syntax error, unexpected '='
#   upcase! = 'ruby'.upcase!
#            ^
