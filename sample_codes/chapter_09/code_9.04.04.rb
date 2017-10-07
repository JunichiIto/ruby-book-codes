require 'date'

def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i
  # 正しい日付の場合のみ、Dateオブジェクトを作成する
  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end

convert_heisei_to_date('平成28年12月31日') #=> #<Date: 2016-12-31 ((2457754j,0s,0n),+0s,2299161j)>
convert_heisei_to_date('平成28年99月99日') #=> nil
