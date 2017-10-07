numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
sum #=> 10

# doを入れて1行で書くことも可能
sum = 0
for n in numbers do sum += n end
sum #=> 10


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
sum #=> 10


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
# ブロック引数やブロック内で作成した変数はブロックの外では参照できない
n         #=> NameError: undefined local variable or method `n' for main:Object
sum_value #=> NameError: undefined local variable or method `sum_value' for main:Object

sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
# for文の中で作成された変数はfor文の外でも参照できる
n         #=> 4
sum_value #=> 40
