require 'date'

def to_date(string)
  begin
    # 文字列のパースを試みる
    Date.parse(string)
  rescue ArgumentError
    # パースできない場合はnilを返す
    nil
  end
end

# パース可能な文字列を渡す
to_date('2017-01-01') #=> #<Date: 2017-01-01 ((2457755j,0s,0n),+0s,2299161j)>

# パース不可能な文字列を渡す
to_date('abcdef')     #=> nil


def to_date(string)
  Date.parse(string) rescue nil
end

to_date('2017-01-01') #=> #<Date: 2017-01-01 ((2457755j,0s,0n),+0s,2299161j)>
to_date('abcdef')     #=> nil
