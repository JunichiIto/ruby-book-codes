# コラム：よく使われるイディオム 2. ||=を使った自己代入
limit ||= 10


limit = nil
limit ||= 10
limit #=> 10

limit = 20
limit ||= 10
limit #=> 20


limit = limit || 10
