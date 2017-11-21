t1 = true
t2 = true
f1 = false
t1 && t2 #=> true
t1 && f1 #=> false

# ----------------------------------------

t1 = true
f1 = false
f2 = false
t1 || f1 #=> true
f1 || f2 #=> false

# ----------------------------------------

t1 = true
t2 = true
f1 = false
f2 = false
t1 && t2 || f1 && f2     #=> true
# 上の式と下の式は同じ意味
(t1 && t2) || (f1 && f2) #=> true

# ----------------------------------------

t1 = true
t2 = true
f1 = false
f2 = false
t1 && (t2 || f1) && f2 #=> false

# ----------------------------------------

t1 = true
f1 = false
!t1 #=> false
!f1 #=> true

# ----------------------------------------

t1 = true
f1 = false
t1 && f1    #=> false
# NOTE: 2017-11-21に訂正 http://gihyo.jp/book/2017/978-4-7741-9397-7/support
!(t1 && f1) #=> true
