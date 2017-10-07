class NoCountryError < StandardError
  # 独自の例外クラス名を与えるだけで、機能的にはStandardErrorと同じにするため、実装コードは特に書かない
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # 独自に定義したNoCountryErrorを発生させる
    raise NoCountryError, "無効な国名です。#{country}"
  end
end

currency_of(:italy) #=> NoCountryError: 無効な国名です。italy


class NoCountryError < StandardError
  # 国名を属性として取得できるようにする
  attr_reader :country

  def initialize(country)
    @country = country
    super("無効な国名です。")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError, country
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  # エラーメッセージと国名を出力する
  puts "#{e.message} #{e.country}"
end
#=> 無効な国名です。 italy


class NoCountryError < StandardError
  def initialize(country, other_info)
    super("無効な国名です。#{country} / #{other_info}")
  end
end

# 例外のnewメソッドが2つの引数を必要とする場合
raise NoCountryError.new(:italy, 'This is test.')
#=> NoCountryError: 無効な国名です。italy / This is test.
