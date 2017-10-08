# getsメソッドを呼ぶとプログラムはユーザーの入力を待つ
input = gets
# (Helloと入力する)
input #=> "Hello\n"

# ----------------------------------------

input = gets
# (Helloと入力する)
input = input.chomp
input #=> "Hello"

# ----------------------------------------

input = gets.chomp
# (Helloと入力する)
input #=> "Hello"
