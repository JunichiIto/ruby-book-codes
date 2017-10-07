'ruby' == 'ruby' #=> true
'ruby' == 'Ruby' #=> false
'ruby' != 'perl' #=> true
'ruby' != 'ruby' #=> false


'a' < 'b'      #=> true
'a' < 'A'      #=> false
'a' > 'A'      #=> true
'abc' < 'def'  #=> true
'abc' < 'ab'   #=> false
'abc' < 'abcd' #=> true
'あいうえお' < 'かきくけこ' #=> true
