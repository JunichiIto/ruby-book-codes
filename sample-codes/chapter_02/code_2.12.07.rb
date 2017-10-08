# Dateクラスは組み込みライブラリではないので、そのままでは使用できない
Date.today #=> NameError: uninitialized constant Date

# dateライブラリを読み込むとDateクラスが使えるようになる
require 'date'
Date.today #=> #<Date: 2017-04-07 ((2457851j,0s,0n),+0s,2299161j)>

# ----------------------------------------

require './sample.rb'

# ----------------------------------------

require './sample'
