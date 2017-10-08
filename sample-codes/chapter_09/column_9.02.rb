# コラム：二重に例外を発生させないようにしよう

def some_method
  1 / 0
rescue => e
  # messageと書くつもりがmesageと書いてしまった
  puts "エラーが発生しました: #{e.mesage}"
  puts e.backtrace
end

some_method
#=> NoMethodError: undefined method `mesage' for #<ZeroDivisionError: divided by 0>

# ----------------------------------------

def some_method
  # 省略
end

begin
  some_method
rescue => e
  puts "エラーが発生しました: #{e.class} #{e.message}"
  puts e.backtrace
  # 元の例外を取得する（存在しなければnilが返る）
  original = e.cause
  unless original.nil?
    puts "元の例外: #{original.class} #{original.message}"
    puts original.backtrace
  end
end
#=> エラーが発生しました: NoMethodError undefined method `mesage' for #<ZeroDivisionError: divided by 0>
#   （バックトレースは省略）
#   元の例外: ZeroDivisionError divided by 0
#   （バックトレースは省略）
