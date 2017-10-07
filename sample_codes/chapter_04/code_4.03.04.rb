numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end


# ブロック引数の名前は何でもよい
numbers.each do |i|
  sum += i
end

numbers.each do |number|
  sum += number
end

numbers.each do |element|
  sum += element
end


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
sum #=> 64


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  # sum_valueはブロック内で初めて登場した変数なので、ブロック内でのみ有効
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
# ブロックの外に出ると、sum_valueは参照できない
sum_value
#=> NameError: undefined local variable or method `sum_value' for main:Object


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  # sumはブロックの外で作成されたので、ブロックの内部でも参照可能
  sum += sum_value
end


numbers = [1, 2, 3, 4]
sum = 0
sum_value = 100
# ブロックの外にもsum_valueはあるが、ブロック内ではブロック引数のsum_valueが優先される
numbers.each do |sum_value|
  sum += sum_value
end
sum #=> 10
