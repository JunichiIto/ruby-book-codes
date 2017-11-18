dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]

# ----------------------------------------

dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]
# 面積の計算結果を格納する配列
areas = []
# ブロック引数が1個であれば、ブロック引数の値が配列になる
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
areas #=> [200, 1200, 3000]

# ----------------------------------------

dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]
# 面積の計算結果を格納する配列
areas = []
# 配列の要素分だけブロック引数を用意すると、各要素の値が別々の変数に格納される
dimensions.each do |length, width|
  areas << length * width
end
areas #=> [200, 1200, 3000]

# ----------------------------------------

# lengthとwidthには値が渡されるが、fooとbarはnilになる
dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end
#=> [10, 20, nil, nil]
#   [30, 40, nil, nil]
#   [50, 60, nil, nil]

# ----------------------------------------

dimensions = [
  [10, 20, 100],
  [30, 40, 200],
  [50, 60, 300],
]
# 3つの値をブロック引数に渡そうとするが、2つしかないので3つ目の値は捨てられる
dimensions.each do |length, width|
  p [length, width]
end
#=> [10, 20]
#   [30, 40]
#   [50, 60]

# ----------------------------------------

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: [10, 20], width: 0, i:
#   length: [30, 40], width: 1, i:
#   length: [50, 60], width: 2, i:

# ----------------------------------------

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
# いったん配列のまま受け取る
dimensions.each_with_index do |dimension, i|
  # 配列から縦と横の値を受け取る
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2

# ----------------------------------------

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
# ブロック引数を()で囲んで、配列の要素を別々の引数として受け取る
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2
