# コラム：メソッドチェーンを使ってコードを書く

def self.loud(level)
  ->(words) do
    words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
  end
end

# ----------------------------------------

def self.loud(level)
  ->(words) do
    words
      .split(' ')
      .map { |word| word.upcase + '!' * level }
      .join(' ')
  end
end
