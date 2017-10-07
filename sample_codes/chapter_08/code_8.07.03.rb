module Loggable
  # 定数を定義する
  PREFIX = '[LOG]'.freeze

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end

# 定数を参照する
Loggable::PREFIX #=> "[LOG]"
